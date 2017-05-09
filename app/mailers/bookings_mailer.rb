class BookingsMailer < ApplicationMailer
  default from: ENV['EMAIL']
  # layout 'mailer'

  def booking_confirmation_email(vehicle_listing, booking)
    @vehicle_listing = vehicle_listing
    @booking = booking
    @url  = 'http://example.com/login'
    mail(to: @booking.customer.email, subject: 'Your booking confirmation with takemyride')
  end

  def owner_notification_email(vehicle_listing, booking)
    @vehicle_listing = vehicle_listing
    @booking = booking
    @url  = 'http://example.com/login'
    mail(to: @vehicle_listing.owner.email, subject: 'Your have a new booking')
  end

end
