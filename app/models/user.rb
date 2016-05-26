class User < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :email, :password
  validates_uniqueness_of :email

  def has_password?(password)
    #password == User.find_by_password(password) // will not take correct pwd
    #password = "Joe" // will take any pwd
    password = User.find_by_password(password)
  end

	def self.authenticate(email, password)
		user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(password)
  end

end