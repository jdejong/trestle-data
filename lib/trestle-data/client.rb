require 'trestle-data/api/util'
require 'trestle-data/api/reverse_phone'

module TrestleData

	class Client
		include TrestleData::Configurable
		include TrestleData::API::ReversePhone

    	def initialize(options={})
				TrestleData::Configurable.keys.each do |key|
        		instance_variable_set(:"@#{key}", options[key] || TrestleData.instance_variable_get(:"@#{key}"))
      		end
    	end
	end
end