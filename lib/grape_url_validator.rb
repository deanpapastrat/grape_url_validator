require 'grape'
require 'grape_url_validator/version'

module GrapeUrlValidator
  class Url < Grape::Validations::Base
    def validate_param!(attr_name, params)
      value = params[attr_name]

      begin
        uri = URI.parse(value)
      rescue URI::InvalidURIError => e
        fail Grape::Exceptions::Validation, params: [@scope.full_name(attr_name)], message: 'is not a valid URL'
      end

      unless uri.scheme == 'http' || uri.scheme == 'https'
        fail Grape::Exceptions::Validation, params: [@scope.full_name(attr_name)], message: 'must include a valid protocol (HTTP or HTTPS)'
      end
    end
  end
end
