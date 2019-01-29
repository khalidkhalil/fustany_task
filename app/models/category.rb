class Category < ApplicationRecord
    before_destroy :check_for_product
    has_one :product, dependent: :restrict_with_error
    validates_presence_of :title
    
    def check_for_product  
    unless product.nil?     
        self.errors[:base] << "Cannot delete shipment while its invoice exists."
        return false   
    end 
    end 

end
