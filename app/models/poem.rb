# == Schema Information
#
# Table name: poems
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_poems_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Poem < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true
end
