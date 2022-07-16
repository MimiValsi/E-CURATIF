class Info < ApplicationRecord
  extend ActiveSupport::Concern

  belongs_to :source
  validates :agent, presence: true
  validates :ouvrage, presence: true
  validates :detail, presence: true, length: { minimum: 5 }

  VALID_STATUSES = ['valide', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
