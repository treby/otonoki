class Group < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: 'belongings'
  has_many :topics
end
