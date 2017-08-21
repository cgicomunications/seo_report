class Business < ActiveRecord::Base
    has_many :phase1s, dependent: :destroy
    accepts_nested_attributes_for :phase1s

    has_many :phase2s, dependent: :destroy
    accepts_nested_attributes_for :phase2s

    has_many :phase3s, dependent: :destroy
    accepts_nested_attributes_for :phase3s

    has_many :phase4s, dependent: :destroy
    accepts_nested_attributes_for :phase4s

    has_many :phase5s, dependent: :destroy
    accepts_nested_attributes_for :phase5s

    def self.search(search)
    #   where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
      where("name LIKE ? OR address LIKE ? OR url LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    end
end
