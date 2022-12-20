require 'optparse'
require 'regex_for_range'
require 'regex_for_range/version'

module RegexForRange
  class CLI 
    OptionParser.new do |parser|
      parser.banner = "Usage: cli.rb [options]"

      parser.on("-h", "--help", "Show this help message") do ||
        puts parser
      end

      parser.on("-v", "--version", "Show this help message") do ||
        puts "regex_for_range #{VERSION}"
      end

      parser.on("-r", "--range RANGE", "arguments for range regex.") do |v|
        arguments = v.split('-')
        argument_start = arguments[0].to_i
        argument_end = arguments[1].to_i
        puts "#{RegexForRange.get_regex_for_range(argument_start, argument_end)}"
      end
    end.parse!
  end
end