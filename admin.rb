Camping.goes :Admin

require_relative 'apps/admin/controllers'
require_relative 'apps/admin/views'
require_relative 'penguin'

module Admin
	Penguin.setup(self)
end
