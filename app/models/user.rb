class User < ActiveRecord::Base
  has_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_commit :send_welcome, on: :create

  def send_welcome
    Notifier.send_welcome_message(self).deliver
  end
end
