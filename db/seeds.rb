TRANSLATIONS = {
  "Apples"        => {:ja => "林檎",      :fr => "Pommes"   },
  "Bananas"       => {:ja => " バナナ",    :fr => "Bananes"  },
  "Pears"         => {:ja => " ピアーズ",   :fr => "Poires"   },
  "Oranges"       => {:ja => " オレンジ",   :fr => "Oranges"  },
  "Kiwis"         => {:ja => " キーウィ",   :fr => "Kiwis"    },
  "Strawberries"  => {:ja => " 苺",      :fr => "Fraises"  },
  "Grapes"        => {:ja => " 葡萄",     :fr => "Raisin"   },
  "Carrots"       => {:ja => " 人参",     :fr => "Carottes" },
  "Broccoli"      => {:ja => " ブロッコリー", :fr => "Brocoli"  },
  "Onions"        => {:ja => " 玉葱",     :fr => "Oignons"  }
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
  filename = File.join(RAILS_ROOT, "db", "stock-images", "#{product.title.downcase}.jpg")
  product.image = File.new(filename) rescue nil
  product.save!
end

TRANSLATIONS.each do |title, translations|
  product = Product.where(:title => title).first
  product.title_fr = translations[:fr]
  product.title_ja = translations[:ja]
  product.save
end
