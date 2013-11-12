require 'spec_helper'

describe Mime::PDF do
  specify do
    expect(Mime::PDF.to_sym).to eql :pdf
    expect(Mime::PDF.to_s).to eql 'application/pdf'
  end
end
