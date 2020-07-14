require 'rails_helper'


RSpec.describe "User can seach for avatars by tribe" do
  it "user searches by Fire Nation" do
    visit '/'
    select "Fire Nation", from: :nation
    click_on "Search For Members"
    expect(current_path).to eq('/search')
    expect(page).to have_content("20 People")

    within(first(".memeber")) do
      expect(page).to have_css(".name")
    end

  end

end


# And I should see a list with the detailed information for the 20 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has
