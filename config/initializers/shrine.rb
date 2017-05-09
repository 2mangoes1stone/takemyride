require "shrine"
require "shrine/storage/file_system"
require "shrine/storage/s3"

s3_options = {
    access_key_id:      ENV['S3_KEY'],
    secret_access_key:  ENV['S3_SECRET'],
    region:             ENV['S3_REGION'],
    bucket:             ENV['S3_BUCKET'],
}

if Rails.env.development?
  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store")#, # permanent
  }
else
  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
    store: Shrine::Storage::S3.new(prefix: "store", **s3_options) #production S3
  }
end


Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
Shrine.plugin :rack_file # for non-Rails apps

