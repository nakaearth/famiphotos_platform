class User < FamiphotosPlatform::FamiphotoBase
  use_switch_point :famiphoto unless Rails.env.test?

  has_many :photos
end
