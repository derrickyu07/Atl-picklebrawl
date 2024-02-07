require "google/cloud/storage"

class TournamentsController < ApplicationController
    def show_images
        @tournament = Tournament.find(params[:id])
        folder_name = @tournament.title.parameterize(separator: '_') # Use tournament title as folder name
        puts "Folder Name: #{folder_name}"
        Rails.logger.info("Folder Name: #{folder_name}") # Log folder name
        @images = fetch_images_from_bucket(folder_name)
      end
    
      private
    
      def fetch_images_from_bucket(folder_name)
        # Authenticate to Google Cloud Storage
        storage = Google::Cloud::Storage.new(
            project_id: ENV['GCS_PROJECT_ID'],
            credentials: {
              private_key_id: ENV['GCS_PRIVATE_KEY_ID'],
              private_key: ENV['GCS_PRIVATE_KEY'],
              client_email: ENV['GCS_CLIENT_EMAIL'],
              client_id: ENV['GCS_CLIENT_ID'],
              auth_provider_x509_cert_url: ENV['GCS_AUTH_PROVIDER_X509_CERT_URL'],
              project_id: ENV['GCS_PROJECT'],
              client_x509_cert_url: ENV['GCS_CLIENT_X509_CERT_URL']
            }
          )
    
        # Get a reference to the bucket
        bucket = storage.bucket(ENV['GCS_BUCKET'])
    
        # Get files from the specified folder

        files = bucket.files(prefix: folder_name)
        image_files = files.select { |file| file.name.downcase.end_with?('.jpg', '.jpeg', '.png', '.gif', '.bmp') }

        # Get URLs of the image files
        image_files.map { |file| file.public_url }
      end
    end
