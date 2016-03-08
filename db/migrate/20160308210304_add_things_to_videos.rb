class AddThingsToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :url, :string
    add_column :videos, :title, :string
    add_column :videos, :caption, :text
  end
end
