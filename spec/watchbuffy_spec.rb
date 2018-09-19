require_relative "../lib/watchbuffy"
require "minitest/autorun"

describe Watchbuffy do
  it "picks a random Buffy or Angel episode" do
    stdout, error = capture_io do
      Watchbuffy.pick
    end

    assert_match /\A▶️  Watch (?:Angel|Buffy) episode \d+×\d+: ".*"\z/, stdout.chomp
    assert_equal "", error
  end
end

