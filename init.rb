# Include hook code here

ActiveRecord::Base.send(:include, ActsAsHasselhoff)

require 'fileutils'
puts 'dir: '
puts directory
#FileUtils.chmod(0755, File.join(directory, 'play'))