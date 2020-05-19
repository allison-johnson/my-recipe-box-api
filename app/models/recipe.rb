class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user 
  has_many :notes
  has_many :recipes_days
  has_many :days, through: :recipes_days

  validates :category, presence: {message: "Please select a category"}
  validates :name, presence: {message: "Recipe name required"}
  validates :url, presence: {message: "Recipe URL required"}
  validates :img_url, presence: {message: "Image URL required"}
  validates :user_id, presence: {message: "Recipe must belong to a user"}

  before_validation :make_title_case

  def make_title_case 
    wordsArr = self.name.split(" ")
    newWordsArr = wordsArr.map{|word| word.capitalize()}
    self.name = newWordsArr.join(" ")
  end #make_title_case
  
end #class