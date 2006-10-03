# Install hook code here
require 'fileutils'
plugin_dir = File.dirname(__FILE__)

# get the base paths of THE HOFF and the public directory in this Rails application
hoff_image, image_dir, backup_dir = 
  %w(images/hoff.png 
     ../../../public/images 
     ../../../public/backup).map do |x|
  File.join(plugin_dir, x)
end

# Move the old images aside. People might, y'know, want them or something.
FileUtils.mkdir(backup_dir) unless File.exist?(backup_dir)
FileUtils.mv(Dir.glob(image_dir + '/*'), backup_dir)

# For each image that was in the original application, create a corresponding image
# ... except the image is really of the Hoff! Mwwwahahahaha.
Dir[backup_dir + '/**/*'].each do |image_file_name|
  FileUtils.cp(hoff_image, image_file_name.gsub(backup_dir, image_dir))
end

FileUtils.chmod(0755, File.join(plugin_dir, 'play'))

# display the README
puts File.read(File.join(plugin_dir, 'README'))