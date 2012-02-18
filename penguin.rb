Camping.goes :Penguin

require 'camping'
require 'camping/session'
require 'rack/csrf'

require_relative 'penguin/controllers'
require_relative 'penguin/views'

def Penguin.setup(app)
	app.module_eval do
		use Rack::Csrf
		include Camping::Session
		include Penguin::Helpers
	end
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

module Penguin
	setup(self)
end
