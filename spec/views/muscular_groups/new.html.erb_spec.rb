require 'rails_helper'

RSpec.describe "muscular_groups/new", type: :view do
  before(:each) do
    assign(:muscular_group, MuscularGroup.new(
      :name => "MyString"
    ))
  end

  it "renders new muscular_group form" do
    render

    assert_select "form[action=?][method=?]", muscular_groups_path, "post" do

      assert_select "input[name=?]", "muscular_group[name]"
    end
  end
end
