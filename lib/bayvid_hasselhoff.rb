require 'bayvid_hasselhoff/puts_slowly'

module BayvidHasselhoff
  def acts_as_bayvid_hasselhoff
    include InstanceMethods
    before_save :play_watch
  end

  module InstanceMethods
    def play_watch
      gem_root = Gem::Specification.find_by_name('bayvid_hasselhoff').gem_dir
      play_bin = File.join(gem_root, 'bin', 'play')
      theme_song = File.join(gem_root, 'data', 'sounds', 'theme.m4a')

      Process.spawn("#{play_bin} #{theme_song}")

      message = PutsSlowly.new('Saving ... in ... slow ... motion ...')
      message.run(1.0)
    end
  end
end

ActiveRecord::Base.extend BayvidHasselhoff
