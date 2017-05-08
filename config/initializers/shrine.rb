require "shrine"
require "shrine/storage/file_system"
 
Shrine.plugin :activerecord
Shrine.plugin :logging, logger: Rails.logger
 
Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"),
}

# Shrine.plugin :activerecord # or :
# Shrine.plugin :cached_attachment_data # for forms