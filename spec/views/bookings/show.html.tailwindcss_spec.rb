require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    assign(:booking, Booking.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
