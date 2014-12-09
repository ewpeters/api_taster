require 'kramdown'

module ApiTaster
  module ApplicationHelper
    def markdown(text)
      Kramdown::Document.new(text).to_html.html_safe
    end

    def headers_js_callback
      render partial: "api_taster/routes/headers.js", locals: {headers: ApiTaster.global_headers}
    end
  end
end
