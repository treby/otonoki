SERVICE_NAME = 'Otonoki' if Rails.env.production?
SERVICE_NAME = 'Otonoki ' + Rails.env unless Rails.env.production?
