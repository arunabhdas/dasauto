require 'rubygems'
require 'nokogiri'
require 'fileutils'


class Baseband
  def self.dasautoweb(n = "Baseband")
    puts "Writing output.html to : #{Dir.pwd}"
    doc = Nokogiri::HTML <<-EOHTML
     <html>
     <body>
        <item>
          <time>05.04.2011 9:53:23</time>
          <iddqd>42</iddqd>
          <idkfa>woot</idkfa>
        </item>
      </body>
      </html>
      EOHTML

      hammer = doc.at_css "time"
      hammer.name = n
      doc.css("iddqd").remove
      doc.css("idkfa").remove

      outfile = File.new("output.html", "w")
      outfile.puts doc.to_html
      outfile.close
  end

  def self.dasautoandroid(n = "Baseband")
    puts "Writing output.xml to : #{Dir.pwd}"
    doc = Nokogiri::HTML <<-EOHTML
    <?xml version="1.0" encoding="utf-8"?>
     <body>
        <item>
          <time>05.04.2011 9:53:23</time>
          <iddqd>42</iddqd>
          <idkfa>woot</idkfa>
        </item>
      </body>
      </xml>
      EOHTML

      hammer = doc.at_css "time"
      hammer.name = n
      doc.css("iddqd").remove
      doc.css("idkfa").remove

      outfile = File.new("output.xml", "w")
      outfile.puts doc.to_html
      outfile.close
  end

  def self.dasautoios(n = "Baseband")
    puts "Writing ios project to : ", n

    # FileUtils.cp_r "../generator-dasautoios/app/templates/DefaultProject.", 'dst', :verbose => true

    dirname = __dir__

    puts "Current........"
    
    puts dirname

    destinationdir = File.join("../dst/", n)

    puts destinationdir

    FileUtils.mkdir_p destinationdir

    FileUtils.cp_r "../generator-dasautoios/app/templates/DefaultProject/.", destinationdir, :verbose => true

    

  end


end

