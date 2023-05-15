class ReservationMailer < ApplicationMailer

  def send_reservation_mail(booking)
    @booking = booking
    mail(to: 'j.thaiartisans@gmail.com',
        bcc: 'benoit.bessiere@gmail.com',
        from: 'contact@thai-artisans.ch',
        subject: 'Thai-Artisans Reservation')
  end

end
