require_dependency "storytime/application_controller"

module Storytime
  class HomepageController < PagesController
    console
  private
    def load_page
      @page = @current_storytime_site.homepage
    end
  end
end