# File: body_decoder
#
class BodyDecoder
  def initialize(headers, body_content)
    @headers = headers
    @body_content = body_content
  end

  def decode
    if headers['Content-Type'] == 'application/json; charset=UTF-8'
      if headers['Content-Length'].to_i == body_content.length

        [JSON.parse(body_content), nil]

      else
        [{}, 'wrong content length']
      end
    else
      [{}, 'wrong content type']
    end
  end

  private

  attr_accessor :headers, :body_content
end

