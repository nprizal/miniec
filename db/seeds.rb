# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EventCategory.create(id:1, name: 'テストカテゴリ1', memo: 'テストカテゴリ1' )
EventCategory.create(id:2, name: 'テストカテゴリ2', memo: 'テストカテゴリ2' )
EventCategory.create(id:3, name: 'テストカテゴリ3', memo: 'テストカテゴリ3' )

EventPost.create(id:1, title: 'テストイベント1', content: 'テストイベント1テストイベント1テストイベント1', event_category_id: '1')
EventPost.create(id:2, title: 'テストイベント2', content: 'テストイベント2テストイベント2テストイベント2', event_category_id: '2')
EventPost.create(id:3, title: 'テストイベント3', content: 'テストイベント2テストイベント2テストイベント2', event_category_id: '3')
