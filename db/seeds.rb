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

Offer.destroy_all
Shop.find_each do |shop|
  shop.offers.create!(
    title: '4€ la barquette de fraises',
    discount: '0',
    start_time: Time.now,
    end_time: Time.now + 60000)
end


