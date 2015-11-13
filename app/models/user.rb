class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }

  after_create :add_identicon

  def add_identicon
    puts '*' * 50
    puts self.email
    @identicon = Identicon.data_url_for self.email, 48, [255, 255, 255]
    puts @identicon
    self.update(identicon: @identicon)
  end
end

#hook/callback 'asks code to run when triggered'
