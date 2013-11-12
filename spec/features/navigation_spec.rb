require 'spec_helper'

describe "format pdf send a pdf as file" do
  specify do
    stub_request(:get, "http://app.happypdf.com/api/pdf?api_key=1234567890&pdt_id=4&data%5Bname%5D=test&data%5Bnumber%5D=111").to_return(:status => 200, :body => "", :headers => {})

    visit documents_path
    click_link "pdf"

    binding.pry
    expect(page.response_headers['Content-Transfer-Encoding']).to eql 'binary'
    expect(page.response_headers['Content-Disposition']).to eql 'attachment; filename="documents.pdf"'
    expect(page.response_headers['Content-Type']).to eql 'application/pdf'
  end
end