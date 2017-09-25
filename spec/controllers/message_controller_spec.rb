require 'rails_helper'

describe MessagesController do
  describe 'GET #index' do
    it "assigns the requested message to @message" do
      messages = create_list(:message, 3)
      get :index
      expect(assigns(:message)).to match(tweets)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

end
