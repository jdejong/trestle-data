
module TrestleData
	module Configurable

		attr_writer :api_key

		class << self
			def keys
		    	@keys ||= [
		    		:api_key
		    	]
		  	end
		end

		def configure
			yield self
			self
		end


		def api_key
			@api_key
		end
	end
end
