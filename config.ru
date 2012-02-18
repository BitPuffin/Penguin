$LOAD_PATH << '.'

require 'penguin'
require 'blog'
require 'admin'

map '/' do
	run Penguin
end

map '/blog' do
	run Blog
end

map '/admin' do
	run Admin
end
