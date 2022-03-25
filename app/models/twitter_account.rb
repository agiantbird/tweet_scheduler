class TwitterAccount < ApplicationRecord
  belongs_to :user
  has_many :tweets

  validates :username, uniqueness: true

  def client
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = Rails.application.credentials.dig(:twitter, :access_key_id)
		  config.consumer_secret     = Rails.application.credentials.dig(:twitter, :secret_access_key)
		  config.access_token        = token
		  config.access_token_secret = secret
		end
  end
end
