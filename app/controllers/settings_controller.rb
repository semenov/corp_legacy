class SettingsController < ApplicationController
  
  def modules
    mods = Mod.all
    mods_active = current_site.mods
    @mods = []
    mods.each do |mod|
      @mods << { 
        :name => mod.name,
        :title => mod.title,
        :active => true
      }
    end 
  end

end
