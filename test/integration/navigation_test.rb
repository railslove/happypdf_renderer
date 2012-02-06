require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test "format pdf send a pdf as file" do
    visit documents_path
    click_link "pdf"

    # assert_equal('binary', headers['Content-Transfer-Encoding'])
    # assert_equal('attachment; filename="documents.pdf"', headers['Content-Disposition'])
    # assert_equal('application/pdf', headers['Content-Type'])
  end

  protected

  def headers
    page.response_headers
  end
end