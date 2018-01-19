module SetSource
#active supp is amodule itself enable to add functions to it like incklude or oythers
extend ActiveSupport::Concern
included do
  before_action :set_source
end
def set_source
  #src is the sessiion name , params is every thing written after q letter if written
  session[:source] = params[:q] if params[:q]
end
end
