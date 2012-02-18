module Penguin::Views

	def layout
		doctype!
		html do
			head do
				title "Penguin!"	
			end
			body do
				h1 "Penguin!!!!!"
				self << yield
				p "hahaha"
			end
		end
	end
	
	def index
		p "prutt!"
		a "blog", :href => '/blog'
	end
end
