module RegexForRange
  class Range
    attr_accessor :first
    attr_accessor :last

    def initialize(first, last)
      @first = first
      @last = last
    end

    def overlaps(range)
      return self.last > range.first && range.last > self.first
    end

    def to_regex
      result = ''

      first_str = self.first.to_s
      last_str = self.last.to_s

      for i in (0..first_str.length - 1)
        if first_str[i] == last_str[i]
          result += first_str[i]
        else
          result += '[' + first_str[i] + '-' + last_str[i] + ']'
        end
      end

      return result
    end
  end
end

