require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test "format pdf send a pdf as file" do
    stub_request(:get, "http://app.happypdf.com/api/pdf?api_key=1234567890&pdt_id=4&data%5Bname%5D=test&data%5Bnumber%5D=111").to_return(:status => 200, :body => "", :headers => {})

    visit documents_path
    click_link "pdf"

    assert_equal('binary', headers['Content-Transfer-Encoding'])
    assert_equal('attachment; filename="documents.pdf"', headers['Content-Disposition'])
    assert_equal('application/pdf', headers['Content-Type'])
  end

  protected

  def headers
    page.response_headers
  end
end