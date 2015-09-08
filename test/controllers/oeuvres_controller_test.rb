require 'test_helper'

class OeuvresControllerTest < ActionController::TestCase
  setup do
    @oeuvre = oeuvres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oeuvres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oeuvre" do
    assert_difference('Oeuvre.count') do
      post :create, oeuvre: { auteur: @oeuvre.auteur, connexes: @oeuvre.connexes, critiques: @oeuvre.critiques, date: @oeuvre.date, descritpion: @oeuvre.descritpion, forme: @oeuvre.forme, localisation: @oeuvre.localisation, titre: @oeuvre.titre }
    end

    assert_redirected_to oeuvre_path(assigns(:oeuvre))
  end

  test "should show oeuvre" do
    get :show, id: @oeuvre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oeuvre
    assert_response :success
  end

  test "should update oeuvre" do
    patch :update, id: @oeuvre, oeuvre: { auteur: @oeuvre.auteur, connexes: @oeuvre.connexes, critiques: @oeuvre.critiques, date: @oeuvre.date, descritpion: @oeuvre.descritpion, forme: @oeuvre.forme, localisation: @oeuvre.localisation, titre: @oeuvre.titre }
    assert_redirected_to oeuvre_path(assigns(:oeuvre))
  end

  test "should destroy oeuvre" do
    assert_difference('Oeuvre.count', -1) do
      delete :destroy, id: @oeuvre
    end

    assert_redirected_to oeuvres_path
  end
end
