class Store < ActiveRecord::Base
  validate :must_have_aparel, on: :create

  def must_have_aparel
    if !womens_apparel && !mens_apparel
      errors.add(:womens_apparel, "can't be false if :mens_apperel is false")
    end
  end
end
