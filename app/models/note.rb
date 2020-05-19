class Note < ApplicationRecord
  belongs_to :recipe
  validates :content, presence: {message: "Whoops, this note was empty!"}
end #class