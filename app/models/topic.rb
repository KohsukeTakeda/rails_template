class Topic < ApplicationRecord
  #Validation
  validates :description, length: { in: 1..100 } # description属性の文字数を1以上100以下に制限する例
end