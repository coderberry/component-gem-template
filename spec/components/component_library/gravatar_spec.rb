# frozen_string_literal: true

require "rails_helper"

describe ComponentLibrary::Gravatar::Component do
  let(:options) { { email: "eric@berry.sh", size: 40 } }
  let(:component) { described_class.new(**options) }

  subject { rendered_content }

  context "with all options" do
    it "renders" do
      render_inline(component)

      is_expected.to include "<img src=\"https://www.gravatar.com/avatar/0e2948f19a7dacdf4085d7d33093f260?s=40\" />"
    end
  end

  context "without the size option" do
    let(:options) { { email: "eric@berry.sh" } }

    it "renders" do
      render_inline(component)

      is_expected.to include "<img src=\"https://www.gravatar.com/avatar/0e2948f19a7dacdf4085d7d33093f260\" />"
    end
  end
end
