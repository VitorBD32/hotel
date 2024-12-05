require "application_system_test_case"

class HospedesTest < ApplicationSystemTestCase
  setup do
    @hospede = hospedes(:one)
  end

  test "visiting the index" do
    visit hospedes_url
    assert_selector "h1", text: "Hospedes"
  end

  test "should create hospede" do
    visit hospedes_url
    click_on "New hospede"

    fill_in "Email", with: @hospede.email
    fill_in "Nome", with: @hospede.nome
    fill_in "Telefone", with: @hospede.telefone
    click_on "Create Hospede"

    assert_text "Hospede was successfully created"
    click_on "Back"
  end

  test "should update Hospede" do
    visit hospede_url(@hospede)
    click_on "Edit this hospede", match: :first

    fill_in "Email", with: @hospede.email
    fill_in "Nome", with: @hospede.nome
    fill_in "Telefone", with: @hospede.telefone
    click_on "Update Hospede"

    assert_text "Hospede was successfully updated"
    click_on "Back"
  end

  test "should destroy Hospede" do
    visit hospede_url(@hospede)
    click_on "Destroy this hospede", match: :first

    assert_text "Hospede was successfully destroyed"
  end
end
