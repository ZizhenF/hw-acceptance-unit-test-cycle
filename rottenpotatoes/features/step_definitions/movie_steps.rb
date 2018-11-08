Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)

  end
 end 

When /I go to the edit page for "(.*)"/ do |movie|
   id = Movie.find_by(title: $1).id
   edit_movie_path(id)
   #visit path_to(edit_movie(movie))
  end 

 #And /I fill in "Director" with "(.*)"/ do |text|
 #   fill_in(director, :with => text)
 # end 
 # And /I press "Update Movie Info"/ do
  #  click_button(


  Then /the director of "(.*)" should be "(.*)"/ do |m, d|
    expect(m.director).to eq d
  end

  
