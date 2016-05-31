require 'rails_helper.rb'

feature 'Creating posts' do 
	scenario 'can create a job' do 
		visit '/'
		click_on 'New Post'
		attach_file('Image', "spec/files/images/cookie.jpg")
		fill_in 'Caption', with: 'Yessir!! #cookietime'
		click_on 'Create Post'
		expect(page).to have_content('#cookietime')
		expect(page).to have_css("img[src*='cookie.jpg']")
	end

	it 'needs an image to create a post' do  
	  # visit root route
	  # click the 'New Post' link
	  # fill in the caption field (without touching the image field)
	  # click the 'Create Post' button
	  # expect the page to say, "Image required"
	end  
end

