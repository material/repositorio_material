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

describe TipomaterialsController do

  # This should return the minimal set of attributes required to create a valid
  # Tipomaterial. As you add validations to Tipomaterial, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipomaterialsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all tipomaterials as @tipomaterials" do
      tipomaterial = Tipomaterial.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tipomaterials).should eq([tipomaterial])
    end
  end

  describe "GET show" do
    it "assigns the requested tipomaterial as @tipomaterial" do
      tipomaterial = Tipomaterial.create! valid_attributes
      get :show, {:id => tipomaterial.to_param}, valid_session
      assigns(:tipomaterial).should eq(tipomaterial)
    end
  end

  describe "GET new" do
    it "assigns a new tipomaterial as @tipomaterial" do
      get :new, {}, valid_session
      assigns(:tipomaterial).should be_a_new(Tipomaterial)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipomaterial as @tipomaterial" do
      tipomaterial = Tipomaterial.create! valid_attributes
      get :edit, {:id => tipomaterial.to_param}, valid_session
      assigns(:tipomaterial).should eq(tipomaterial)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tipomaterial" do
        expect {
          post :create, {:tipomaterial => valid_attributes}, valid_session
        }.to change(Tipomaterial, :count).by(1)
      end

      it "assigns a newly created tipomaterial as @tipomaterial" do
        post :create, {:tipomaterial => valid_attributes}, valid_session
        assigns(:tipomaterial).should be_a(Tipomaterial)
        assigns(:tipomaterial).should be_persisted
      end

      it "redirects to the created tipomaterial" do
        post :create, {:tipomaterial => valid_attributes}, valid_session
        response.should redirect_to(Tipomaterial.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipomaterial as @tipomaterial" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tipomaterial.any_instance.stub(:save).and_return(false)
        post :create, {:tipomaterial => {}}, valid_session
        assigns(:tipomaterial).should be_a_new(Tipomaterial)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tipomaterial.any_instance.stub(:save).and_return(false)
        post :create, {:tipomaterial => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tipomaterial" do
        tipomaterial = Tipomaterial.create! valid_attributes
        # Assuming there are no other tipomaterials in the database, this
        # specifies that the Tipomaterial created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tipomaterial.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => tipomaterial.to_param, :tipomaterial => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested tipomaterial as @tipomaterial" do
        tipomaterial = Tipomaterial.create! valid_attributes
        put :update, {:id => tipomaterial.to_param, :tipomaterial => valid_attributes}, valid_session
        assigns(:tipomaterial).should eq(tipomaterial)
      end

      it "redirects to the tipomaterial" do
        tipomaterial = Tipomaterial.create! valid_attributes
        put :update, {:id => tipomaterial.to_param, :tipomaterial => valid_attributes}, valid_session
        response.should redirect_to(tipomaterial)
      end
    end

    describe "with invalid params" do
      it "assigns the tipomaterial as @tipomaterial" do
        tipomaterial = Tipomaterial.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tipomaterial.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipomaterial.to_param, :tipomaterial => {}}, valid_session
        assigns(:tipomaterial).should eq(tipomaterial)
      end

      it "re-renders the 'edit' template" do
        tipomaterial = Tipomaterial.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tipomaterial.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipomaterial.to_param, :tipomaterial => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipomaterial" do
      tipomaterial = Tipomaterial.create! valid_attributes
      expect {
        delete :destroy, {:id => tipomaterial.to_param}, valid_session
      }.to change(Tipomaterial, :count).by(-1)
    end

    it "redirects to the tipomaterials list" do
      tipomaterial = Tipomaterial.create! valid_attributes
      delete :destroy, {:id => tipomaterial.to_param}, valid_session
      response.should redirect_to(tipomaterials_url)
    end
  end

end
