TRANSLATIONS = {
  "Apples"        => {:fr => "Pommes",    :ja => "\\u6797 \\u6A8E"},
  "Bananas"       => {:fr => "Bananes",   :ja => "\\u30D0 \\u30CA \\u30CA"},
  "Pears"         => {:fr => "Poires",    :ja => "\\u68A8"},
  "Oranges"       => {:fr => "Oranges",   :ja => "\\u30AA \\u30EC \\u30F3 \\u30B8"},
  "Kiwis"         => {:fr => "Kiwis",     :ja => "\\u30AD \\u30FC \\u30A6 \\u30A3"},
  "Strawberries"  => {:fr => "Fraises",   :ja => "\\u82FA"},
  "Grapes"        => {:fr => "Raisin",    :ja => "\\u8461 \\u8404"},
  "Carrots"       => {:fr => "Carottes",  :ja => "\\u4EBA \\u53C2"},
  "Broccoli"      => {:fr => "Brocoli",   :ja => "\\u30D6 \\u30ED \\u30C3 \\u30B3 \\u30EA \\u30FC"},
  "Onions"        => {:fr => "Oignons",   :ja => "\\u7389 \\u8471"}
}

Product.create(:title => "Apples",          :unit_price => 1.29, :unit => 'lb')
Product.create(:title => "Bananas",         :unit_price => 0.79, :unit => 'lb')
Product.create(:title => "Pears",           :unit_price => 1.69, :unit => 'lb')
Product.create(:title => "Oranges",         :unit_price => 1.69, :unit => 'lb')
Product.create(:title => "Kiwis",           :unit_price => 0.79, :unit => 'each')
Product.create(:title => "Strawberries",    :unit_price => 2.69, :unit => 'lb')
Product.create(:title => "Grapes",          :unit_price => 2.19, :unit => 'lb')
Product.create(:title => "Carrots",         :unit_price => 1.79, :unit => 'lb')
Product.create(:title => "Broccoli",        :unit_price => 3.19, :unit => 'each')
Product.create(:title => "Onions",          :unit_price => 1.99, :unit => 'lb')

Product.all.each do |product|
  filename = File.join(Rails.root, "db", "stock-images", "#{product.title.downcase}.jpg")
  product.image = File.new(filename) rescue nil
  product.save!
end

TRANSLATIONS.each do |title, translations|
  product = Product.where(:title => title).first
  product.title_fr = translations[:fr]
  product.title_ja = translations[:ja]
  product.save
end
