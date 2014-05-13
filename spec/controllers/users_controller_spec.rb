require 'spec_helper'

describe UsersController do

	describe "GET #new" do
		it 'assigns @new_user a new user' do
			get :new
			assigns(:new_user).should be_a_new(User)
		end
	end

	describe "POST #create" do
		it 'assigns @new_user a new user' do
			expect{
				post :create, user: FactoryGirl.attributes_for(:user)
			}.to change(User, :count).by (1)
		end
	end

end