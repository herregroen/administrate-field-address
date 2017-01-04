require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class Address < Administrate::Field::Base
      VERSION = "0.0.1"

      @api_key   = false
      @latitude  = false
      @longitude = false
      @zoom      = 12

      class << self
        def javascript
          "https://maps.googleapis.com/maps/api/js?key=#{@api_key}&libraries=places"
        end

        def api_key= val
          if @api_key
            raise "Administrate::Field::Address.api_key has already been set, it should only be set once."
          else
            @api_key = val
            Administrate::Engine.add_javascript javascript
          end
        end
        def api_key
          if @api_key
            @api_key
          else
            raise "Administrate::Field::Address.api_key is not set.\nCreate an initializer containing Administrate::Field::Address.api_key = YOUR_GOOGLE_MAPS_API_KEY"
          end
        end

        def latitude= val
          @latitude = val
        end
        def latitude
          if @latitude
            @latitude
          else
            raise "Administrate::Field::Address.latitude is not set.\nCreate an initializer containing Administrate::Field::Address.latitude = DEFAULT_MAPS_LATITUDE"
          end
        end

        def longitude= val
          @longitude = val
        end
        def longitude
          if @longitude
            @longitude
          else
            raise "Administrate::Field::Address.longitude is not set.\nCreate an initializer containing Administrate::Field::Address.longitude = DEFAULT_MAPS_LONGITUDE"
          end
        end

        def zoom= val
          @zoom = val
        end
        def zoom
          @zoom
        end
      end

      class Engine < ::Rails::Engine
        initializer "administrate.field.address.assets" do |app|
          app.config.assets.precompile += %w( administrate-field-address/application.js administrate-field-address/application.scss )
          Administrate::Engine.add_javascript "administrate-field-address/application"
          Administrate::Engine.add_stylesheet "administrate-field-address/application"
        end
      end
    end
  end
end
