require 'google/apis/drive_v3'

class GoogleDriveService
  def initialize(credentials)
    @client = Google::Apis::DriveV3::DriveService.new
    @client.authorization = credentials
  end

  def fetch_image(image_id)
    @client.get_file(image_id)
  end
end