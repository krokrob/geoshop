User.destroy_all
User.create!(email: 'kevin@geoshop.com', password: '12345678', admin: true)
User.create!(email: 'matthieu@geoshop.com', password: '12345678')
User.create!(email: 'merchand@geoshop.com', password: '12345678')


