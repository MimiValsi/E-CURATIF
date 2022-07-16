class Source < ApplicationRecord
  extend ActiveSupport::Concern
  
  has_many :archives
  has_many :infos, dependent: :destroy

  validates :name, presence: true, uniqueness: true


end
