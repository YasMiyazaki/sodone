# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Data
Visacategory.create(category: '高度専門職ビザ / Highly skilled professional visa')
Visacategory.create(category: '就業ビザ / Working visa')
Visacategory.create(category: '一般ビザ / General visa')
Visacategory.create(category: '特定ビザ / Specified visa')
Visacategory.create(category: 'その他 / Other')
  
Visa.create(visacategory_id: 1, name: '高度専門職1号 / Highly skilled professional')
Visa.create(visacategory_id: 1, name: '高度人材 / Highly skilled foreign professional')
Visa.create(visacategory_id: 2, name: '教授 / Professor')
Visa.create(visacategory_id: 2, name: '芸術 / Artist')
Visa.create(visacategory_id: 2, name: '宗教 / Religious activities')
Visa.create(visacategory_id: 2, name: '報道 / Journalist')
Visa.create(visacategory_id: 2, name: '経営・管理 / Business manager')
Visa.create(visacategory_id: 2, name: '法律・会計業務 / Legal/Accounting services')
Visa.create(visacategory_id: 2, name: '医療 / Medical services')
Visa.create(visacategory_id: 2, name: '研究 / Researcher')
Visa.create(visacategory_id: 2, name: '教育 / Instructor')
Visa.create(visacategory_id: 2, name: '技術・人文知識・国際業務 / Engineer/Specialist in humanities/International services')
Visa.create(visacategory_id: 2, name: '企業内転勤 / Intra-company transferee')
Visa.create(visacategory_id: 2, name: '介護 / ')
Visa.create(visacategory_id: 2, name: '興行 / Entertainer')
Visa.create(visacategory_id: 2, name: '技能 / Skilled labor')
Visa.create(visacategory_id: 3, name: '文化活動 / Cultural activities')
Visa.create(visacategory_id: 3, name: '留学 / Student')
Visa.create(visacategory_id: 3, name: '研修 / Training')
Visa.create(visacategory_id: 3, name: '家族滞在 / Dependent (Family stays)')
Visa.create(visacategory_id: 3, name: '技能実習1号 / General visa: Technical intern training')
Visa.create(visacategory_id: 4, name: '日本人の配偶者等 / Spouse or child of Japanese national')
Visa.create(visacategory_id: 4, name: '永住者の配偶者 / Spouse of permanent resident')
Visa.create(visacategory_id: 4, name: '定住者 / Long-term resident')
Visa.create(visacategory_id: 4, name: '特定活動 / Designated activities')
Visa.create(visacategory_id: 5, name: 'その他 / Other')
Visa.create(visacategory_id: 5, name: '日本人')
