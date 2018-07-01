require 'rails_helper'

RSpec.describe "muscular_groups/edit", type: :view do
  before(:each) do
    @muscular_group = assign(:muscular_group, MuscularGroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit muscular_group form" do
    render

    assert_select "form[action=?][method=?]", muscular_group_path(@muscular_group), "post" do

      assert_select "input[name=?]", "muscular_group[name]"
    end
  end
end
