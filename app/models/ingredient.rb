class Ingredient < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses

  before_destroy :check_for_cocktails, prepend: true

  private

  def check_for_cocktails
    raise "Cannot delete ingredient associated to other cocktails" unless cocktails.count == 0
    # ... ok, go ahead and destroy
    super
  end

end
