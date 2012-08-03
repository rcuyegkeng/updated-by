require "active_record"
require "updated_by/updated"

if defined?(ActiveRecord::Base)
  require "adapters/active_record"
  ActiveRecord::Base.send :include, UpdatedBy::Updated
end


#FIXME corrigir essa implementacao
# class User < ActiveRecord::Base
#   cattr_accessor :current_user
# end

# TODO remarking this out so that the AppicationController defined in the
# app is not overridden.  Find a way to move this code back to the gem.
# Perhaps include a module from the app?
#class ApplicationController < ActionController::Base
#  before_filter :set_current_user 

#  private
#  def set_current_user
#    User.current_user = current_user if defined?(current_user)
#  end
#end
