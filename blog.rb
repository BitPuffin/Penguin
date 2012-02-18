Camping.goes :Blog

require_relative 'apps/blog/controllers'
require_relative 'apps/blog/views'
require_relative 'penguin'

module Blog
	Penguin.setup(self)
end
