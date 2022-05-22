class Booking < ApplicationRecord

  validates :name, presence: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/i }
  validates :phone, presence: true
  validates :pax, presence: true
  validates :date, presence: true, if: :check_date_valid?
  validates :time, presence: true, if: :check_time_valid?


  def check_date_valid?
    if date == Date.today
      errors.add(:date, 'Réserver par téléphone, SVP!')
    elsif date < Date.today
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
    start_lunch = 12
    end_lunch = 14
    start_diner = 19
    end_diner = 22

    if time.hour < start_lunch
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time.hour > end_lunch && time.hour < start_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time.hour > end_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    end
  end
end
