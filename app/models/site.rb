class Site < ActiveRecord::Base
  has_and_belongs_to_many :mods
  has_many :pages
  belongs_to :user
end
