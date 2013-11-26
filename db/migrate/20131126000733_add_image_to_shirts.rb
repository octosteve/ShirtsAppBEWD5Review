class AddImageToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :image, :string, default: 'blank.png'
  end
end
