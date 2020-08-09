class Book < ApplicationRecord
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :user
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
