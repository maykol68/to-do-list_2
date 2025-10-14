require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  context 'CRUD' do
    it "returns all tasks" do
      FactoryBot.create(:task)
      FactoryBot.create(:task_2)

      get :index

      expect(response).to have_http_status(:ok)
    end

    it "show specific task" do
        task = FactoryBot.create(:task)

        get :show, params: {id: task.id}

        expect(response).to have_http_status(:ok)
    end

    it "create a task" do 
        task = FactoryBot.attributes_for(:task)

        expect {
        post :create, params: { task: task }
      }.to change(Task, :count).by(1)

      expect(response).to have_http_status(:found)  
      expect(response).to redirect_to(tasks_path)   
      expect(flash[:notice]).to eq("task created")
    end

    it "update task" do 
        task = FactoryBot.create(:task)
        updated_attributes = { title: "Nuevo título", description: "Nueva descripción" }


        patch :update, params: { id: task.id, task: updated_attributes }

        task.reload
        expect(task.title).to eq("Nuevo título")
        expect(task.description).to eq("Nueva descripción")
        expect(response).to redirect_to(tasks_path)
    end

    it "destroy task" do 
        task = FactoryBot.create(:task)
        
        expect {
            delete :destroy, params: { id: task.id}
        }.to change(Task, :count).by(-1)

      expect(response).to have_http_status(:found)  
      expect(response).to redirect_to(tasks_path)   
      expect(flash[:notice]).to eq("task deleted")

    end
  end
end
