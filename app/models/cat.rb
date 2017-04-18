class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :description, presence: true
  validates :sex, presence: true, inclusion:{ in:["M", "F"] }


  def self.valid_colors
    [
      "black",
      "white",
      "orange",
      "tan"
    ]
  end
end
