class Photo < FamiphotoPlatform::FamiphotoPhotoBase
  use_switch_point :famiphoto_photo unless Rails.env.test?
end
