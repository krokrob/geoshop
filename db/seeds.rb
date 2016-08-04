User.destroy_all
User.create!(email: 'kevin@geoshop.com', password: '12345678', admin: true)
User.create!(email: 'matthieu@geoshop.com', password: '12345678')
merchand = User.create!(email: 'merchand@geoshop.com', password: '12345678')

Shop.destroy_all
lw = Shop.new(name: 'Le Wagon', address: '16 Villa Gaudelet, Paris')
lw.user = merchand
lw.save!
monop = Shop.new(name: 'Monoprix', address: '89 rue Oberkampf, Paris')
monop.user = merchand
monop.save!
franprix = Shop.new(name: 'Franprix', address: '113 rue Saint-Maur, Paris')
franprix.user = merchand
franprix.save!

