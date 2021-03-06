class User < ActiveRecord::Base
  has_and_belongs_to_many :groups, join_table: 'belongings'
  validates :profile_url, url: {allow_blank: true}
  validates :external_url, url: {allow_blank: true}

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.screen_name = auth["info"]["nickname"]
    end
  end
end
