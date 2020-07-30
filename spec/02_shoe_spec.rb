describe 'Shoe' do 
  describe 'BRANDS' do
    # Think about it! When does the BRANDS constant need to be
    # made aware of the brands of the shoes that are being created?

    it 'keeps track of all brands' do
      brands = ["Uggs", "Rainbow"]
      brands.each do |brand|
        Shoe.new(brand)
      end                       #creating a bunch of shoes

      brands.each do |brand|
        expect(Shoe::BRANDS).to include(brand)
      end                       #expecting BRANDS to keep the brands
    end

    it 'only keeps track of unique brands' do
      Shoe::BRANDS.clear
      brands = ["Uggs", "Rainbow", "Nike", "Nike"]
      brands.each do |brand|
        Shoe.new(brand)
      end                       #expecting uniq BRANDS

      expect(Shoe::BRANDS.size).to eq(3)
    end
  end
end