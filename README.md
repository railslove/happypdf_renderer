HappypdfRenderer
================

With HappypdfRenderer you can easily interface the HappyPDF.com service from within your Rails Application to render out PDF documents with a happy smile on your face.

Install
-------

    # add to your Gemfile
    gem 'happypdf_renderer', :git => 'git@github.com:railslove/happypdf_renderer.git'

Setup
-----

    # configure with your api key
    HappypdfRenderer.configure do |config|
      config.api_key = "ee57bfc8de6071ce4c6b"
    end

    # add to your controller

    respond_to do |format|
      format.html
      format.pdf {render :pdf => "a-fancy-file-name", :data => {:pdt_id=>"your-template-id", :a-block-in-your-template => "nice pdf. bro!"}}
    end

    # request application/pdf or .pdf
    # http://example.org/documents.pdf

Be Happy!
---------

