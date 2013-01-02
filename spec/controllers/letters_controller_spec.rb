require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LettersController do

  # This should return the minimal set of attributes required to create a valid
  # Letter. As you add validations to Letter, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LettersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all letters as @letters" do
      letter = Letter.create! valid_attributes
      get :index, {}, valid_session
      assigns(:letters).should eq([letter])
    end
  end

  describe "GET show" do
    it "assigns the requested letter as @letter" do
      letter = Letter.create! valid_attributes
      get :show, {:id => letter.to_param}, valid_session
      assigns(:letter).should eq(letter)
    end
  end

  describe "GET new" do
    it "assigns a new letter as @letter" do
      get :new, {}, valid_session
      assigns(:letter).should be_a_new(Letter)
    end
  end

  describe "GET edit" do
    it "assigns the requested letter as @letter" do
      letter = Letter.create! valid_attributes
      get :edit, {:id => letter.to_param}, valid_session
      assigns(:letter).should eq(letter)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Letter" do
        expect {
          post :create, {:letter => valid_attributes}, valid_session
        }.to change(Letter, :count).by(1)
      end

      it "assigns a newly created letter as @letter" do
        post :create, {:letter => valid_attributes}, valid_session
        assigns(:letter).should be_a(Letter)
        assigns(:letter).should be_persisted
      end

      it "redirects to the created letter" do
        post :create, {:letter => valid_attributes}, valid_session
        response.should redirect_to(Letter.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved letter as @letter" do
        # Trigger the behavior that occurs when invalid params are submitted
        Letter.any_instance.stub(:save).and_return(false)
        post :create, {:letter => {}}, valid_session
        assigns(:letter).should be_a_new(Letter)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Letter.any_instance.stub(:save).and_return(false)
        post :create, {:letter => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested letter" do
        letter = Letter.create! valid_attributes
        # Assuming there are no other letters in the database, this
        # specifies that the Letter created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Letter.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => letter.to_param, :letter => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested letter as @letter" do
        letter = Letter.create! valid_attributes
        put :update, {:id => letter.to_param, :letter => valid_attributes}, valid_session
        assigns(:letter).should eq(letter)
      end

      it "redirects to the letter" do
        letter = Letter.create! valid_attributes
        put :update, {:id => letter.to_param, :letter => valid_attributes}, valid_session
        response.should redirect_to(letter)
      end
    end

    describe "with invalid params" do
      it "assigns the letter as @letter" do
        letter = Letter.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Letter.any_instance.stub(:save).and_return(false)
        put :update, {:id => letter.to_param, :letter => {}}, valid_session
        assigns(:letter).should eq(letter)
      end

      it "re-renders the 'edit' template" do
        letter = Letter.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Letter.any_instance.stub(:save).and_return(false)
        put :update, {:id => letter.to_param, :letter => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested letter" do
      letter = Letter.create! valid_attributes
      expect {
        delete :destroy, {:id => letter.to_param}, valid_session
      }.to change(Letter, :count).by(-1)
    end

    it "redirects to the letters list" do
      letter = Letter.create! valid_attributes
      delete :destroy, {:id => letter.to_param}, valid_session
      response.should redirect_to(letters_url)
    end
  end

end
