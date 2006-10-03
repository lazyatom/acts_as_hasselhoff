# ActsAsHasselhoff
require 'puts_slowly'

module ActsAsHasselhoff # modifies ActiveRecord::Base
  def self.included(base_class)
    base_class.extend(ActsAsMethods)
  end

  # This module creates the methods which can be used to
  # introduce our plugin's behaviour into an ActiveRecord subclass.
  module ActsAsMethods
    def acts_as_hasselhoff
      include ActsAsHasselhoff::Behaviour
      before_save :slow_motion_running
      nil
    end
  end
    
  # This module describes the behaviour to be added when the
  # acts_as_hasselhoff method is present in a subclass.
  module Behaviour
    def slow_motion_running
      this_dir = "#{RAILS_ROOT}/vendor/plugins/acts_as_hasselhoff"
      t = Thread.new { `#{this_dir}/play #{this_dir}/sounds/theme.m4a` }
      t.run
      puts_slowly "Saving ... in ... slow ... motion ...", 1.0
      t.join
      true
    end   
  end
end