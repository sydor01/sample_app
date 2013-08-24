# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
   token_files = Rails.root.join('secret')
   if File.exist?(token_file)
      # Use the existing token.
      File.read(token_file).chomp
   else
      # Generate a new token and store it in token_file.
      token = SecureRandom.hex(64)
      File.write(token_file, token)
      token
   end
end
      
SampleApp::Application.config.secret_key_base = 'f7e240342f8d4a94daa4149b924339c2afa8dd6d41baa8b72b5b3a2a98714ea35e1b34ed05f5edf10ec86e333b11b4213de6262453511faf2671efe3018247f3'
