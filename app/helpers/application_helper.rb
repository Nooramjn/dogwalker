module ApplicationHelper

def title
	base_title = "Dog Walkers :: Doha"
	if @title.nil?
		base_title
	else
		"Dog Walkers :: #{@title}"
end
end

end
