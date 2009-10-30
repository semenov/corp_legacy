# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def site_menu
    items = []
    # TODO: replace current_site by real current site 
    #current_site = Site.first
    items << { :title => 'Общая информация', :url => '/' }
    
    if current_site.mods.find_by_name('pages')
      current_site.pages.each do |page|
        items << { :title => page.title, :url => page_path(page) }
      end
    end
    
    current_site.mods.each do |mod|  
      if mod.name != 'pages'
        items << { :title => mod.title, :url => "/#{mod.name}" }
      end
    end
    return items
  end
end
