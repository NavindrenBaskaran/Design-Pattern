require './AbstractReport.rb'

class PlainTextReport < AbstractReport
  def output_head
    puts("*** #{@title} ***")
    puts
  end

  def output_line(line)
    puts(line)
  end
end


pt = PlainTextReport.new
pt.output_report
