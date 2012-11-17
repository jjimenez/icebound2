# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MarketType.create(name: 'Agent', user_id: 1)
MarketType.create(name: 'Online', user:  User.find_by_name("Jose Jimenez"))
MarketType.create(name: 'Print', user:  User.find_by_name("Jose Jimenez"))
MarketType.create(name: 'Other', user:  User.find_by_name("Jose Jimenez"))

ManuscriptType.create(name: 'Novel', user_id: 1)
ManuscriptType.create(name: 'Poem', user_id: 1)
ManuscriptType.create(name: 'Short Fiction', user_id: 1)
ManuscriptType.create(name: 'Flash', user_id: 1)
ManuscriptType.create(name: 'Other', user_id: 1)

Manuscript.create(title: 'The first of Many', manuscript_type: ManuscriptType.find_by_name('Novel'), word_count: '97500 words', user_id: 1)
Manuscript.create(title: 'A show of Hands', manuscript_type: ManuscriptType.find_by_name('Short Fiction'), word_count: '8000 words', user_id: 1)
Manuscript.create(title: 'Five', manuscript_type: ManuscriptType.find_by_name('Poem'), word_count: '25 lines', user_id: 1)
Manuscript.create(title: 'Orange dreams of Trees', manuscript_type: ManuscriptType.find_by_name('Flash'), word_count: '500 words', user_id: 1)

Market.create(name: 'Tales of Fruit', market_type: MarketType.find_by_name('Online'), email: 'someone@there.com', website: 'www.somewhere.com', user_id: 1)
Market.create(name: 'Clash of the Bumblebees', market_type: MarketType.find_by_name('Print'), email: 'someone@there.com', website: 'www.somewhere.com', user_id: 1)
Market.create(name: 'Letters from Writers', market_type: MarketType.find_by_name('Other'), email: 'someone@there.com', website: 'www.somewhere.com', user_id: 1)
Market.create(name: 'Mary Margret Malone', market_type: MarketType.find_by_name('Agent'), email: 'someone@there.com', website: 'www.somewhere.com', user_id: 1)
