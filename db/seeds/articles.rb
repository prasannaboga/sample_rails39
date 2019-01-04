# Creating Articles
#

Article.destroy_all

100.times do |i|
    article = Article.new
    article.title = Faker::Book.title
    article.post = Faker::Book.author
    article.save
end
