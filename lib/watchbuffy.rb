require_relative "watchbuffy/version"

require "json"

module Watchbuffy
  EPISODES = JSON.parse(File.read(__dir__ + "/../data/buffyverse-episodes.json"))["episodes"]
  BUFFY_SEASONS = [1, 2, 3, 4, 5, 6, 7]
  ANGEL_SEASONS = [1, 2, 3, 4, 5]

  class << self
    def pick(show: %w[buffy angel], buffy_season: BUFFY_SEASONS, angel_season: ANGEL_SEASONS, exclude_characters: [])
      episode = EPISODES.select{ |e|
        show.include?(e["show"]) &&
        (
          e["show"] == "buffy" && Array(buffy_season).include?(e["season"]) ||
          e["show"] == "angel" && Array(angel_season).include?(e["season"])
        ) &&
        (Array(e["includesCharacters"]) & Array(exclude_characters)).length.zero?
      }.sample

      if episode
        watch(episode)
      else
        puts "No episode found"
      end
    end

    private

    def watch(episode)
      puts \
        '▶️  Watch %s episode %s×%s: "%s"' % [
          episode["show"].capitalize,
          episode["season"],
          episode["numberInSeason"],
          episode["title"],
        ]
    end
  end
end

