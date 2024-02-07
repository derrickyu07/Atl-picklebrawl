class HomeController < ApplicationController
  def index
    puts "GOOGLE_PROJECT_ID: #{ENV['GCS_PROJECT_ID'].inspect}"
    puts "PRIVATE_KEY_ID: #{ENV['GCS_PRIVATE_KEY_ID'].inspect}"
    puts "PRIVATE_KEY: #{ENV['GCS_PRIVATE_KEY'].inspect}"
    puts "CLIENT_EMAIL: #{ENV['GCS_CLIENT_EMAIL'].inspect}"
    puts "CLIENT_ID: #{ENV['GCS_CLIENT_ID'].inspect}"
    puts "AUTH_PROVIDER: #{ENV['GCS_AUTH_PROVIDER_X509_CERT_URL'].inspect}"
    puts "PROJECT_ID: #{ENV['GCS_PROJECT'].inspect}"
    puts "CLIENT: #{ENV['GCS_CLIENT_X509_CERT_URL'].inspect}"
    puts "GOOGLE_STORAGE_BUCKET: #{ENV['GCS_BUCKET'].inspect}"
  end
  def about
  end
  def gallery
    @tournaments = Tournament.includes(:images).all
  end
end
