# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MarketType.create(name: 'Agent')
MarketType.create(name: 'Online')
MarketType.create(name: 'Print')
MarketType.create(name: 'Other')

ManuscriptType.create(name: 'Novel')
ManuscriptType.create(name: 'Poem')
ManuscriptType.create(name: 'Short Fiction')
ManuscriptType.create(name: 'Flash')
ManuscriptType.create(name: 'Other')

Manuscript.create(title: 'The first of Many', manuscript_type: ManuscriptType.find_by_name('Novel'), word_count: '97500 words')
Manuscript.create(title: 'A show of Hands', manuscript_type: ManuscriptType.find_by_name('Short Fiction'), word_count: '8000 words')
Manuscript.create(title: 'Five', manuscript_type: ManuscriptType.find_by_name('Poem'), word_count: '25 lines')
Manuscript.create(title: 'Orange dreams of Trees', manuscript_type: ManuscriptType.find_by_name('Flash'), word_count: '500 words')

Market.create(name: 'Tales of Fruit', market_type: MarketType.find_by_name('Online'), email: 'someone@there.com', website: 'www.somewhere.com')
Market.create(name: 'Clash of the Bumblebees', market_type: MarketType.find_by_name('Print'), email: 'someone@there.com', website: 'www.somewhere.com')
Market.create(name: 'Letters from Writers', market_type: MarketType.find_by_name('Other'), email: 'someone@there.com', website: 'www.somewhere.com')
Market.create(name: 'Mary Margret Malone', market_type: MarketType.find_by_name('Agent'), email: 'someone@there.com', website: 'www.somewhere.com')
