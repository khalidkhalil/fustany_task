FactoryGirl.define do  
    factory :product do  
    title Faker::Commerce.product_name  
    price Faker::Commerce.price  
    category_id Faker::Commerce.department(1) 
    description Faker::Lorem.words(rand(2..10))  
    end  
end  
    