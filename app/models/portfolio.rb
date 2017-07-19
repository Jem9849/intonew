class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  validates_presence_of :title, :body, :main_image, :thumb_image
  include Placeholder
  
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  def self.by_position
    order("position ASC")
  end
  
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://www.pawschicago.org/fileadmin/media/images/adoption_section/PAWS_New_Site__51_of_201__01.jpg"
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
