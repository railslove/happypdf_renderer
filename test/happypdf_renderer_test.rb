require 'test_helper'

class HappypdfRendererTest < ActiveSupport::TestCase
  test "pdf mime type" do
    assert_equal(:pdf, Mime::PDF.to_sym)
    assert_equal("application/pdf", Mime::PDF.to_s)
  end
end
