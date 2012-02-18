Camping.goes :Admin

require_relative 'admin/controllers'
require_relative 'admin/views'
require_relative 'penguin'

module Admin
	Penguin.setup(self)
end
