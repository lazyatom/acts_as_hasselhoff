require 'acts_as_hasselhoff/puts_slowly'

module ActsAsHasselhoff
  def acts_as_hasselhoff
    include InstanceMethods
    before_save :play_watch
  end

  module InstanceMethods
    def play_watch
      gem_root = Gem::Specification.find_by_name('acts_as_hasselhoff').gem_dir
      play_bin = File.join(gem_root, 'bin', 'play')
      theme_song = File.join(gem_root, 'data', 'sounds', 'theme.m4a')

      Process.spawn("#{play_bin} #{theme_song}")

      message = PutsSlowly.new('Saving ... in ... slow ... motion ...')
      message.run(1.0)
    end
  end
end

ActiveRecord::Base.extend ActsAsHasselhoff
