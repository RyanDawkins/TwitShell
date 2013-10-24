class Authorization


# In order to get your keys you will go to dev.twitter.com
# sign in and then choose create an app
# you will then fill out your information and name your app
# Then you will be presented with a screen that shows at the bottom of
# the "details tab" where your keys are. You will need to go to the
# settings and change to 'read-write'. After setting those settings go
# back to the details tab and generate your tokens. Enter your tokens
# at the constant variables below.

CONSUMER_KEY = ""
CONSUMER_SECRET = ""
OAUTH_TOKEN = ""
OAUTH_TOKEN_SECRET = ""
TWITTER_USERNAME = ""

	def Authorization.authorize

                # Authorizes your account
                Twitter.configure do |veri|
                        veri.consumer_key = CONSUMER_KEY
                        veri.consumer_secret = CONSUMER_SECRET
                        veri.oauth_token = OAUTH_TOKEN
                        veri.oauth_token_secret = OAUTH_TOKEN_SECRET
                end

        end

end

