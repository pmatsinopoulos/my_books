# File: app/jobs/sign_up_confirmation_email_job.rb
#
class SignUpConfirmationEmailJob < ApplicationJob
  queue_as :low_priority

  before_enqueue do |job|
    puts "Before enqueuing job: #{job.inspect}"
  end

  around_enqueue do |job, enqueue_block|
    puts "Before executing enqueue in an around callback, #{job.inspect}"

    enqueue_block.call

    puts "After executing enqueue in an around callback, #{job.inspect}"
  end

  after_enqueue do |job|
    puts "After enqueuing job: #{job.inspect}"
  end

  before_perform do |job|
    Rails.logger.debug "Before performing job: #{job.inspect}"
  end

  around_perform do |job, perform_block|
    Rails.logger.debug "Before executing perform in an around callback, #{job.inspect}"

    perform_block.call

    Rails.logger.debug "After executing perform in an around callback, #{job.inspect}"
  end

  after_perform do |job|
    Rails.logger.debug "After performing job: #{job.inspect}"
  end

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.ask_for_email_confirmation(user.id).deliver
  end
end
