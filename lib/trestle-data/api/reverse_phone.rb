require 'trestle-data/api/util'

module TrestleData
    module API
        module ReversePhone
            include TrestleData::API::Util

            API_VERSION = '3.0'

            def reverse_lookup(phone_number, options = {})
                call('phone', API_VERSION, :get, {phone: phone_number, api_key: api_key}.merge(options))
            end

            def api_key_valid?
                true unless api_key.blank?
                false
            end
        end
    end
end