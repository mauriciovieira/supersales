User.create name: 'John Smith', status: :active, kind: :salesperson, email: 'john.smith@example.com', password: 'password'
User.create name: 'John Doe', status: :active, kind: :salesperson, email: 'john.doe@example.com', password: 'password'
User.create name: 'Jane Doe', status: :active, kind: :manager, email: 'jane.doe@example.com', password: 'password'

Product.create name: 'Smartphone', description: 'Coolest phone ever', status: :active
Product.create name: 'Tablet', description: 'Coolest tablet!', status: :active

Discount.create name: 'Thanksgiving', description: 'Thanksgiving, black friday discount!', value: '10', kind: :percentage, status: :active