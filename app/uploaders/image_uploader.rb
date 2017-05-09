require "image_processing/mini_magick"

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick
    plugin :processing
    plugin :versions
    plugin :delete_raw
    plugin :remove_attachment

    process(:store) do |io, context|
        { original: io, thumb: resize_to_limit!(io.download, 300, 300) }
    end
end