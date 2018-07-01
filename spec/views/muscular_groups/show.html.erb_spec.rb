require 'rails_helper'

RSpec.describe "muscular_groups/show", type: :view do
  before(:each) do
    @muscular_group = assign(:muscular_group, MuscularGroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
