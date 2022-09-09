require 'rails_helper'

RSpec.describe 'merchant index page' do 
    it 'displays all merchants by name', :vcr do 
        visit "/merchants"

        expect(page).to have_content("Merchants")

        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Willms and Sons")
    end 

    it 'links to the merchants show page via their name', :vcr do 

        visit "/merchants"

        click_on "Schroeder-Jerde"

        expect(current_path).to eq("/merchants/1")
    end 


end 