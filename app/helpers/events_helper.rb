module EventsHelper
	def format_price(event)
		if event.free?  
			content_tag(:strong, "Free!")
		else
			number_to_currency(event.price)
		end
	end

	def image_for(event)
		if event.image_file_name.blank?
			image_tag 'placeholder.png', size: "150"
		else
			image_tag event.image_file_name, size: "150"
		end
	end
end
