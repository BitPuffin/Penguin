require 'penguin'
require 'blog'
require 'admin'

$LOAD_PATH << '.'

map '/' do
	run Penguin
end

map '/blog' do
	run Blog
end

map 'admin' do
	run Admin
end
