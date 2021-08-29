require 'customers_management'
require 'orders_management'
require 'logger'

class Application
  def authenticate
    username_given, password_given = ask_credentials
    validate_credentials(username_given, password_given)
    @state = 'ask-database'
  end

  def run
    while true
      if ask_database?
        use_database
      elsif ask_crud?
        self.crud_action = ask_crud_action
        if ['c', 'r', 'u', 'd', 'l', 'b'].include?(crud_action)
          actions[crud_action].()
        else
          $stderr.puts 'Wrong Action'
        end
      end
    end
  end

  private

  attr_accessor :database, :state, :crud_action

  def actions
    {'c' => -> { db.create    },
     'd' => -> { db.delete    },
     'r' => -> { db.retrieve  },
     'u' => -> { db.update    },
     'l' => -> { db.list      },
     'b' => -> { use_database }}
  end

  def database
    @database == 'c' ? 'Customers' : 'Orders'
  end

  def ask_database?
    state == 'ask-database'
  end

  def ask_crud?
    state == 'ask-crud'
  end

  def ask_crud_action
    print "(#{database}): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: "
    gets.chomp.downcase
  end

  def use_database
    print 'Choose database: [c] for customers, [o] for orders: '
    answer = gets.chomp.downcase
    if ['c', 'o'].include?(answer)
      self.database = answer
      self.state = 'ask-crud'
    else
      puts 'Wrong database chosen'
    end
  end

  def username
    config_username
  end

  def password
    config_password
  end

  def config_credentials
    config['credentials']
  end

  def config_username
    config_credentials['username']
  end

  def config_password
    config_credentials['password']
  end

  def config_database
    config['database']
  end

  def config_logger_filename
    config['log']
  end

  def config
    @config ||= YAML.load_file('crm-application.yml')
  end

  def ask_credentials
    print 'Username: '
    username = gets.chomp
    print 'Password: '
    password = $stdin.noecho(&:gets).chomp rescue gets.chomp
    puts
    [username, password]
  end

  def validate_credentials(username_given, password_given)
    if username_given.nil? || password_given.nil? || username_given.downcase != username || password_given != password
      $stderr.puts 'Wrong username or password!'
      exit 1
    end
  end

  def db
    customers_db? ? customers_management : (orders_db? ? orders_management : raise(StandardError, 'Wrong Database'))
  end

  def customers_db?
    database.downcase == 'customers'
  end

  def orders_db?
    database.downcase == 'orders'
  end

  def customers_management
    @customers_management ||= CustomersManagement.new(customers_db_filename, logger)
  end

  def orders_management
    @orders_management ||= OrdersManagement.new(orders_db_filename, customers_management, logger)
  end

  def customers_db_filename
    config_database['customers']
  end

  def orders_db_filename
    config_database['orders']
  end

  def logger
    @logger ||= Logger.new(config_logger_filename)
  end
end
