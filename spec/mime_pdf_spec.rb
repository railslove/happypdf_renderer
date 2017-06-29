require 'spec_helper'

describe Mime[:pdf] do
  specify do
    expect(Mime[:pdf].to_sym).to eql :pdf
    expect(Mime[:pdf].to_s).to eql 'application/pdf'
  end
end
