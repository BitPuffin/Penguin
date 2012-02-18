Camping.goes :Penguin

require 'camping'
require 'camping/session'
require 'rack/csrf'

require_relative 'penguin/controllers'
require_relative 'penguin/views'

module Penguin
	use Rack::Csrf
	include Camping::Session
end

module Penguin::Helpers
	# Override form to always include the CSRF-tag
	def form(*)
		super do
			self << Rack::Csrf.tag(@env)
			yield
		end
	end
end
