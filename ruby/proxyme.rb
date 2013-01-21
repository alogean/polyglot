#!/usr/bin/env ruby

require 'webrick/httpproxy'

class ProxyServer
  def handler(req, res)
    if(res.kind_of?(Net::HTTPRedirection))
      new_url = res['Location']
      res = Net::HTTP.get_response(URI.parse(new_url))
    end
    unless res.body == nil
      # make use of a html parser
      # ruby html parser: hpricot or nokogiri
      res.body.gsub!(/<head/, '<HEAD')
    end
  end

  def initialize
    @server = WEBrick::HTTPProxyServer.new(
      :BindAddress    => '0.0.0.0',
      :Port           => 8181,
      :ProxyVia       => false,
      :ProxyContentHandler => method(:handler)
    )
  end

  def start
    @server.start
  end

  def stop
    @server.shutdown
  end
end
#
# Create and start the server
#
ps = ProxyServer.new
%w[INT HUP].each { |signal| trap(signal) { ps.stop } }
ps.start