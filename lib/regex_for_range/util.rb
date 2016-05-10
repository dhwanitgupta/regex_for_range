module RegexForRange
  module Util
    extend self

    def from_end(last)

      last_str = last.to_s

      i = last_str.length - 1

      while i >= 0 do
        if last_str[i] == '9'
          last_str[i] = '0'
        else
          last_str[i] = '0'
          break
        end
        i -= 1
      end

      return Range.new(last_str.to_i, last)
    end

    def from_start(first)
      first_str = first.to_s

      i = first_str.length - 1

      while i >= 0 do
        if first_str[i] == '0'
          first_str[i] = '9'
        else
          first_str[i] = '9'
          break
        end
        i -= 1
      end

      return Range.new(first, first_str.to_i)
    end

    def join(range1, range2)
      return Range.new(range1.first, range2.last)
    end

    def join_regex_by_or(ranges)
      results = ''
      ranges.each do |range|
        results += range.to_regex + '|'
      end

      return results[0..-2]
    end
  end
end