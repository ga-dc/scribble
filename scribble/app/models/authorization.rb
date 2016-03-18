class Authorization
  belongs_to :user
  validates :provider, :uid, :presence => true
end
