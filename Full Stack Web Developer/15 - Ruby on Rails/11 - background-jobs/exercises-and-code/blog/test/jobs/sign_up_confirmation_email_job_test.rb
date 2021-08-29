# File test/jobs/sign_up_confirmation_email_job_test.rb
#
class SignUpConfirmationEmailJobTest < ActiveJob::TestCase
  test 'an email is put in the queue' do
    user = create(:user)

    ActionMailer::Base.deliveries.clear
    assert_difference "ActionMailer::Base.deliveries.size", 1 do
      SignUpConfirmationEmailJob.perform_now(user.id)
    end
  end
end
