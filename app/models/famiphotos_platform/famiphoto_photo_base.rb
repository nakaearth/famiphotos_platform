module FamiphotosPlatform
  class FamiphotoPhotoBase < FamiphotoBase
    self.abstract_class = true

    establish_connection(:famiphoto_photo_db))
  end
end
