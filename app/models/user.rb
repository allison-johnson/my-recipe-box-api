class User < ApplicationRecord
  has_secure_password
  has_many :recipes 

  validates :email, presence: {message: "Email address required for sign up"}
  validates :email, uniqueness: {message: "Email address already in use. Please log in to continue!"}
  validates :first_name, presence: {message: "First name required for sign up"}

  before_validation :make_title_case

  def make_title_case 
    wordsArr = self.first_name.split(" ")
    newWordsArr = wordsArr.map{|word| word.capitalize()}
    self.first_name = newWordsArr.join(" ")
  end #make_title_case

end
