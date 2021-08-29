1. You need make sure that your student implements the program according to task requirements.
2. A sample implementation is given here:
``` ruby
# File: task.rb
#
# This file is invoked as
#   task.rb <input-file> <output-file>
#
# It reads the input CSV file and normalizes all the telephone number to contain only digits.
# It generates a new output CSV file with the normalized data.
# Also, it logs its processing using a Logger.
#
require 'csv'
require 'logger'

def check_arguments(logger)
  if ARGV.size != 2
    error_message = 'You need to provide the input and the output csv filenames'
    $stderr.puts error_message
    logger.error error_message
    exit 1
  end
end

logger = Logger.new('processing-customers.log')
logger.level = Logger::INFO

check_arguments(logger)

input_filename = ARGV[0]
output_filename = ARGV[1]

CSV.open(input_filename, headers: true) do |csv_input|
  CSV.open(output_filename, 'w') do |csv_out|
    headers_written = false
    while line_read = csv_input.readline
      # write the headers to the output file, but only once
      unless headers_written
        csv_out << line_read.headers
        headers_written = true
      end

      first_name, last_name, address, phone = line_read.to_h.values
      phone = phone.gsub(/[^\d]/, '')

      output = [first_name, last_name, address, phone]

      logger.info("Writing data to CSV: #{output}")
      csv_out << output
      csv_out.flush
    end
  end
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.
