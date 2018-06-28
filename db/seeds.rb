User.upsert name: 'John Smith', status: :active, kind: :salesperson, email: 'john.smith@example.com', password: 'password'
User.upsert name: 'John Doe', status: :active, kind: :salesperson, email: 'john.doe@example.com', password: 'password'
User.upsert name: 'Jane Doe', status: :active, kind: :manager, email: 'jane.doe@example.com', password: 'password'

Product.upsert sku: 'SKU-001', name: 'Smartphone', description: 'Coolest phone ever', status: :active
Product.upsert sku: 'SKU-002', name: 'Tablet', description: 'Coolest tablet!', status: :active

Discount.upsert coupon: 'TSK-01', name: 'Thanksgiving', description: 'Thanksgiving, black friday discount!', value: '10', kind: :percentage, status: :active