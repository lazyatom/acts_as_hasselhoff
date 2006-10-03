# Install hook code here
require 'fileutils'

# get the base paths of THE HOFF and the public directory in this Rails application
hoff_image = File.join(File.dirname(__FILE__), 'images/hoff.png')
image_dir = File.join(File.dirname(__FILE__), '../../../public/images')
backup_dir = File.join(File.dirname(__FILE__), '../../../public/backup')

# Move the old images aside. People might, y'know, want them or something.
FileUtils.mkdir(backup_dir) unless File.exist?(backup_dir)
FileUtils.mv(Dir.glob(image_dir + '/*'), backup_dir)

# For each image that was in the original application, create a corresponding image
# ... except the image is really of the Hoff! Mwwwahahahaha.
Dir[backup_dir + '/**/*'].each do |image_file_name|
  FileUtils.cp(hoff_image, image_file_name.gsub(backup_dir, image_dir))
end

puts 'dir: '
puts directory
#FileUtils.chmod(0755, File.join(directory, 'play'))