class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://www.pawschicago.org/fileadmin/media/images/adoption_section/PAWS_New_Site__51_of_201__01.jpg"
    self.thumb_image ||= "https://i1.wp.com/amyshojai.com/wp-content/uploads/2015/03/CatFall_33186977_original.jpg?fit=1200%2C1200&resize=350%2C200"
  end
end
