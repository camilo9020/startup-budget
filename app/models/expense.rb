# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  concept    :text
#  amount     :integer
#  category   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expense < ApplicationRecord
  belongs_to :user
  enum category: [ :compra, :retiro, :transferencia, :pago ]
  validates :concept, :amount, :category, presence: true
end
