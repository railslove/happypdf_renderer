require "action_controller"
require "httparty"

module HappypdfRenderer
  include ActiveSupport::Configurable

  config_accessor :api_key, :host, :api_endpoint

  configure do |config|
    config.host = "app.happypdf.com"
    config.api_endpoint = "/api/pdf"
  end

  class PDFRequest
    include HTTParty

    format :plain
    base_uri HappypdfRenderer.host

    def self.show(data)
      raise ArgumentError, "api_key is blank! Please set it properly!" unless HappypdfRenderer.api_key

      pdt_id = data.delete(:pdt_id)
      self.get(HappypdfRenderer.api_endpoint, :query => {:pdt_id => pdt_id, :data => data}, :headers => {"X-Api-Token" => HappypdfRenderer.api_key})
    end
  end
end

Mime::Type.register "application/pdf", :pdf

ActionController::Renderers.add :pdf do |filename, options|
  request = HappypdfRenderer::PDFRequest.show(options[:data])
  send_data(request.body, :filename => "#{filename}.pdf", :type => Mime::PDF.to_s, :dispositon => "attachment")
end