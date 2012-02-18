Camping.goes :Blog

require_relative 'blog/controllers'
require_relative 'blog/views'
require_relative 'penguin'

module Blog
	Penguin.setup(self)
end
