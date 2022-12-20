require 'regex_for_range/version'
require 'regex_for_range/util'
require 'regex_for_range/range'
require 'cli'

module RegexForRange
  class << self

  def get_regex_for_range(first, last)
    left = left_bounds(first, last)
    last_left = left.delete_at(left.length - 1)

    right = right_bounds(last_left.first, last)
    first_right = right.delete_at(0)

    merged = []
    merged += left

    if !last_left.overlaps(first_right)
      merged.push(last_left)
      merged.push(first_right)
    else
      merged.push(RegexForRange::Util.join(last_left, first_right))
    end

    merged += right

    return RegexForRange::Util.join_regex_by_or(merged)
  end


  def left_bounds(first, last)

    results = []

    while last > first
      range = RegexForRange::Util.from_start(first)
      results.push(range)
      first = range.last + 1
    end

    return results
  end

  def right_bounds(first, last)
    results = []

    while last > first
      range = RegexForRange::Util.from_end(last)
      results.push(range)
      last = range.first - 1
    end

    return results.reverse
  end
  end
end
