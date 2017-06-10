100.times do
  article = Article.new
  article.title = Faker::Lorem.word
  article.body = Faker::Lorem.sentence(3)
  article.category_id = Category.all.sample.id
  article.published_date = Faker::Date.backward(365)
  article.save

end

t.string :title
t.text :body
t.integer :category_id
t.datetime :published_date



100.times do

  product = Product.new
  product.name = Faker::Commerce.product_name
  product.price = Faker::Commerce.price(10,1000)
  product.description = Faker::Lorem.paragraph
  product.stock = Faker::Number.number(3)
  product.cod_eligibility = [true,false].sample
  product.category_id = Category.all.sample.id
  product.save

end
