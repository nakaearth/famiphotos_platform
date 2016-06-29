class Photo < FamiphotoPlatform::FamiphotoPhotoBase
  use_switch_point :famiphoto_photo unless Rails.env.test?

  belongs_to :user

  def photo_db
    'famiphoto_photo_db'.to_sym
  end
end
