require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("matt@me.com", "Matt", "1234567890", @message="Hello")

    assert_equal ['info@module-selector.com'], mail.to
    assert_equal ['info@module-selector.com'], mail.from
  end
end
