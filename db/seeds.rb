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

#	
I18n.locale = :en
ja_post = Post.new(title: 'Babysitting, Housekeeping', category: 'Japanese Life', headline: 'Babysitting, Support housekeeping, Pick-up from school, Moving…', content: 'Babysitting, Support housekeeping, Pick-up from school, Moving…')
I18n.locale = :ja
ja_post.attributes = {title: '育児、家事', category: '日本生活サポート', headline: 'ベビーシッター、家事手伝い、学校送迎、引っ越し手伝い等', content: 'ベビーシッター、家事手伝い、学校送迎、引っ越し手伝い等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Воспитание детей, помощь с домашними делами', category: 'Жизнь в Японии', headline: 'Услуги няни, уборка дома, забрать ребёнка из школы, переезд...', content: 'Услуги няни, уборка дома, забрать ребёнка из школы, переезд...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Learn Japanese', category: 'Japanese Life', headline: 'Learn Japanese, Tutoring for school exams, Support study abroad…', content: 'Learn Japanese, Tutoring for school exams, Support study abroad…')
I18n.locale = :ja
ja_post.attributes = {title: '日本学習', category: '日本生活サポート', headline: '日本語、家庭教師、留学相談等', content: '日本語、家庭教師、留学相談等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Изучение японского языка', category: 'Жизнь в Японии', headline: 'Советы по изучунию японского языка и обучение в Японии', content: 'Советы по изучунию японского языка и обучение в Японии'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Sightseeing', category: 'Japanese Life', headline: 'Guide, Support planning, Cultural tour…', content: 'Guide, Support planning, Cultural tour…')
I18n.locale = :ja
ja_post.attributes = {title: '観光、趣味', category: '日本生活サポート', headline: '日本観光ガイド、プラン作成、文化体験', content: '日本観光ガイド、プラン作成、文化体験'}
I18n.locale = :ru
ja_post.attributes = {title: 'Осмотр достопримечательностей', category: 'Жизнь в Японии', headline: 'Гид, планирование путешествия, окунуться в иностранную культуру...', content: 'Гид, планирование путешествия, окунуться в иностранную культуру...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Administrative Procedure', category: 'Japanese Life', headline: 'Support Visa application, open bank account, phone contract, electricity settings…', content: 'Support Visa application, open bank account, phone contract, electricity settings…')
I18n.locale = :ja
ja_post.attributes = {title: '公的手続きサポート', category: '日本生活サポート', headline: 'ビザ代行、アドバイス、手続同行等', content: 'ビザ代行、アドバイス、手続同行等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Административные процедуры', category: 'Жизнь в Японии', headline: 'Помощь в оформлении визы, открытия банковского счёта, контракта на телефон, настройки электронной техники...', content: 'Помощь в оформлении визы, открытия банковского счёта, контракта на телефон, настройки электронной техники...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Local Service', category: 'Local Life', headline: 'Cook meals, Beauty Service(Hair, Nail, Massage)…', content: 'Cook meals, Beauty Service(Hair, Nail, Massage)…')
I18n.locale = :ja
ja_post.attributes = {title: '母国ローカルサービス', category: '母国ローカルサービス', headline: '母国の食・美容等', content: '母国の食・美容等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Услуги связанные с родной страной', category: 'Родная культура', headline: 'Готовка национальной еды, услуги красоты (стрижка, покраска волос, маникюр, массаж)...', content: 'Готовка национальной еды, услуги красоты (стрижка, покраска волос, маникюр, массаж)...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Learn Local', category: 'Local Life', headline: 'Learn your native language, history, culture, Tutoring, Experience native culture…', content: 'Learn your native language, history, culture, Tutoring, Experience native culture…')
I18n.locale = :ja
ja_post.attributes = {title: '母国学習', category: '母国ローカルサービス', headline: '母国語、第三言語、家庭教師、母国文化体験等', content: '母国語、第三言語、家庭教師、母国文化体験等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Изучать о своей родной стране', category: 'Родная культура', headline: 'Изучение родного языка, истории, культуры, услуги репититора...', content: 'Изучение родного языка, истории, культуры, услуги репититора...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Job hunting support', category: 'Career and Business', headline: 'Resume and Interview support, Career counselling…', content: 'Resume and Interview support, Career counselling…')
I18n.locale = :ja
ja_post.attributes = {title: '就職サポート', category: 'ビジネス・キャリア', headline: '履歴書添削、面接対策、キャリアカウンセリング等', content: '履歴書添削、面接対策、キャリアカウンセリング等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Помощь в поиске работы', category: 'Карьера и бизнес', headline: 'Помощь в написании резюме и подготовки к интервью, советы по карьере...', content: 'Помощь в написании резюме и подготовки к интервью, советы по карьере...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Skill Up', category: 'Career and Business', headline: 'Microsoft office lessons, Japanese Business Manner lessons, Email and Phone lessons…', content: 'Microsoft office lessons, Japanese Business Manner lessons, Email and Phone lessons…')
I18n.locale = :ja
ja_post.attributes = {title: 'スキルアップ', category: 'ビジネス・キャリア', headline: 'スキルアップ、日本ビジネスマナー等', content: 'スキルアップ、日本ビジネスマナー等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Повышение квалификации', category: 'Карьера и бизнес', headline: ' Уроки Microsoft office, бизнес манеры в Японии, уроки написания бизнес писем и правил разговора по телефону... ', content: ' Уроки Microsoft office, бизнес манеры в Японии, уроки написания бизнес писем и правил разговора по телефону... '}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Business Advice', category: 'Career and Business', headline: 'Business advice for business between Japan and your country, Interview for maket needs…', content: 'Business advice for business between Japan and your country, Interview for maket needs…')
I18n.locale = :ja
ja_post.attributes = {title: 'ビジネスアドバイス', category: 'ビジネス・キャリア', headline: '日本、海外でのビジネスアドバイス、ニーズインタビュー等', content: '日本、海外でのビジネスアドバイス、ニーズインタビュー等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Советы связанные с работой', category: 'Карьера и бизнес', headline: 'Бизнес советы по бизнесу между Японикй и вашей родной страной, интервью с носителями языка о местном рынке...', content: 'Бизнес советы по бизнесу между Японикй и вашей родной страной, интервью с носителями языка о местном рынке...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Spot Business Support', category: 'Career and Business', headline: 'Outsoucing simple tasks, document creation, investigation, maketing…', content: 'Outsoucing simple tasks, document creation, investigation, maketing…)')
I18n.locale = :ja
ja_post.attributes = {title: 'スポットビジネス', category: 'ビジネス・キャリア', headline: '単発タスク対応、資料作成、調査、マーケティング等', content: '単発タスク対応、資料作成、調査、マーケティング等'}
I18n.locale = :ru
ja_post.attributes = {title: 'Помощь в определённых заданиях', category: 'Карьера и бизнес', headline: 'Выполнение простых заданий, создание документов,  проведения коротких исследований, маркетинг...', content: 'Выполнение простых заданий, создание документов,  проведения коротких исследований, маркетинг...'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Translation', category: 'Language', headline: 'From business to private matters.', content: 'From business to private matters.')
I18n.locale = :ja
ja_post.attributes = {title: '通訳', category: '言語', headline: '対面通訳、オンライン通訳、電話通訳、ビジネス～私生活関連', content: '対面通訳、オンライン通訳、電話通訳、ビジネス～私生活関連'}
I18n.locale = :ru
ja_post.attributes = {title: 'Перевод текстов', category: 'Язык', headline: 'От коротких предложений до перевода документов.', content: 'От коротких предложений до перевода документов.'}
ja_post.save
I18n.locale = :en
ja_post = Post.new(title: 'Interpretation', category: 'Language', headline: 'From business to private matters with online video or phone.', content: 'From business to private matters with online video or phone.')
I18n.locale = :ja
ja_post.attributes = {title: '翻訳', category: '言語', headline: 'ビジネス～私生活関連', content: 'ビジネス～私生活関連'}
I18n.locale = :ru
ja_post.attributes = {title: 'Услуги переводчика', category: 'Язык', headline: 'Для работы и вне работы. Онлайн видео, телефон. ', content: 'Для работы и вне работы. Онлайн видео, телефон. '}
ja_post.save
