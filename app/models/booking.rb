class Booking < ApplicationRecord

  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :phone, validate: true
  attribute :pax, validate: true
  attribute :date, validate: :check_date_valid?
  attribute :time, validate: :check_time_valid?
  attribute :message

  def check_date_valid?
    if date == Date.today.strftime("%Y-%m-%d")
      errors.add(:date, 'Réserver par téléphone, SVP!')
    elsif date < Date.today.strftime("%Y-%m-%d")
      errors.add(:date, 'Date passée !')

    # if date == '2021-12-20' ||
    #    date == '2021-12-21' ||
    #    ...
    #    date == '2022-01-08' ||
    #    date == '2022-01-09'
    #    errors.add(:date, 'Fermé jusqu\'au 9 janvier inclus' )
    end
  end

  def check_time_valid?
    start_lunch = '12:00'
    end_lunch = '14:00'
    start_diner = '19:00'
    end_diner = '22:00'

    if time < start_lunch
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time > end_lunch && time < start_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time > end_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    end
  end
end
