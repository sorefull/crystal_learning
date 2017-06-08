# The times_with_retry is a specific method that repeats yelding your bloc if it
# raises exeption. It's a good tool for API usage wich fails time to time.

struct Int
  def times_with_retry(&block)
    self.times do |i|
      begin
        yield
        break
      rescue ex
        raise ex if i + 1 == self
      end
    end
  end
end
