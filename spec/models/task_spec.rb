require 'rails_helper'

RSpec.describe Task, type: :model do


    context "Validations" do
        it "is valid wit title, description, and completed" do 
            task = FactoryBot.build(:task)
            expect(task).to be_valid
        end

        it "is Not valid without title" do 
            task = FactoryBot.build(:task_without_title)
            expect(task).not_to be_valid
        end

          it "is Not valid without description" do 
            task = FactoryBot.build(:task_without_description)
            expect(task).not_to be_valid
        end

        it "is Not valid long description" do 
            task = FactoryBot.build(:task_with_long_description)
            expect(task).not_to be_valid
        end

        it "is Not valid long title" do 
            task = FactoryBot.build(:task_with_long_title)
            expect(task).not_to be_valid
        end

        

    end

    
end