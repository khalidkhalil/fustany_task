require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "associations" do
  it { should belong_to(:category) }
  end

  context "validations" do
    it {  should validate_presence_of(:title)}
    it {  should validate_presence_of(:price)}
    it {  should validate_numericality_of(:price)}
  end


end

