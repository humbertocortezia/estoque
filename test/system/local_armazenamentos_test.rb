require "application_system_test_case"

class LocalArmazenamentosTest < ApplicationSystemTestCase
  setup do
    @local_armazenamento = local_armazenamentos(:one)
  end

  test "visiting the index" do
    visit local_armazenamentos_url
    assert_selector "h1", text: "Local Armazenamentos"
  end

  test "creating a Local armazenamento" do
    visit local_armazenamentos_url
    click_on "New Local Armazenamento"

    fill_in "Nome", with: @local_armazenamento.nome
    click_on "Create Local armazenamento"

    assert_text "Local armazenamento was successfully created"
    click_on "Back"
  end

  test "updating a Local armazenamento" do
    visit local_armazenamentos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @local_armazenamento.nome
    click_on "Update Local armazenamento"

    assert_text "Local armazenamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Local armazenamento" do
    visit local_armazenamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Local armazenamento was successfully destroyed"
  end
end
