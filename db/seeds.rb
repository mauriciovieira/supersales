User.upsert name: 'John Smith', status: :active, kind: :salesperson, email: 'john.smith@example.com', password: 'password'
User.upsert name: 'John Doe', status: :active, kind: :salesperson, email: 'john.doe@example.com', password: 'password'
User.upsert name: 'Jane Doe', status: :active, kind: :manager, email: 'jane.doe@example.com', password: 'password'

Product.upsert sku: 'SKU-001', name: 'Smartphone', description: 'Coolest phone ever', status: :active, price: 200
Product.upsert sku: 'SKU-002', name: 'Tablet', description: 'Coolest tablet!', status: :active, price: 100

Discount.upsert coupon: 'TSK-01', name: 'Thanksgiving', description: 'Thanksgiving, black friday discount!', value: '10', kind: :percentage, status: :active
Discount.create coupon: 'DAY-01', name: 'Daily discount', description: 'Give this discount whenever possible', value: '10', kind: :cash, status: :active

Client.upsert name: 'Adam Smith', company_name: 'History', document: '902939-ABC5', email: 'adam.smith@history.example.com', user: User.first
Client.upsert name: 'John Titor', company_name: 'Future', document: '999999-ZZZ9', email: 'joht.titor@singularity.email.com', user: User.first
