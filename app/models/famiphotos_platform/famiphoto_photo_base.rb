module FamiphotosPlatform
  class FamiphotoPhotoBase < FamiphotoBase
    self.abstract_class = true

    establish_connection("famiphotos_photo_#{RAILS_ENV['ENV']}".to_sym)
  end
end
