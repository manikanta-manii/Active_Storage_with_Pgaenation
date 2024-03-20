class AddNameToTrack < ActiveRecord::Migration[7.1]
  def change
    add_column :tracks, :aud, :string
  end
end
