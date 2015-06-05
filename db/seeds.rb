Product.delete_all
Image.delete_all
p = Product.new

p.title = "SEIKO Sport Solar Black and Orange Dial Chronograph Men's Watch"
p.price = 137.21

i = Image.new

i.url = 'https://s3-sa-east-1.amazonaws.com/dev-store-whatchs/watch.jpg'
i.main = true

p.images << i
p.save