class ItemsController < ApplicationController
  def index
    @list_of_items=Item.all.order({:link_description => :desc})
    render({:template =>"item_templates/list"})
  end
  
end
