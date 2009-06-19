class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.ignore_blank_passwords = false
  end
  has_many :writs
  has_many :user_followers
  has_many :followers, :through => :user_followers
  has_many :user_leaders, :class_name => "UserFollower",
    :foreign_key => "follower_id"
  has_many :leaders, :through => :user_leaders, :source => :user
end
