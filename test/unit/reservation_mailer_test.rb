require 'test_helper'

class ReservationMailerTest < ActionMailer::TestCase
  test "confirmation" do
    @expected.subject = 'ReservationMailer#confirmation'
    @expected.body    = read_fixture('confirmation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, ReservationMailer.create_confirmation(@expected.date).encoded
  end

end
