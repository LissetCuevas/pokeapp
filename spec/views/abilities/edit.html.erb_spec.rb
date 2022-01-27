require 'rails_helper'

RSpec.describe "abilities/edit", type: :view do
  before(:each) do
    @ability = assign(:ability, Ability.create!(
      :name => "MyString",
      :effect => "MyString",
      :short_effect => "MyString",
      :generation => "MyString"
    ))
  end

  it "renders the edit ability form" do
    render

    assert_select "form[action=?][method=?]", ability_path(@ability), "post" do

      assert_select "input[name=?]", "ability[name]"

      assert_select "input[name=?]", "ability[effect]"

      assert_select "input[name=?]", "ability[short_effect]"

      assert_select "input[name=?]", "ability[generation]"
    end
  end
end
