class User <ActiveRecord::Base
   
   has_many :articles
   
   before_save {self.email = email.downcase }
   
   validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 25}
   validates :email, presence: true, uniqueness: {case_sensitive: false}
   
    
end
    