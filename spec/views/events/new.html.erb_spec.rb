require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      mentor: nil,
      mentee: nil,
      length: 1,
      note: "MyText",
      location: "MyText"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[mentor_id]"

      assert_select "input[name=?]", "event[mentee_id]"

      assert_select "input[name=?]", "event[length]"

      assert_select "textarea[name=?]", "event[note]"

      assert_select "textarea[name=?]", "event[location]"
    end
  end
end
