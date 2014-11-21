class RemoveColumnAdsressFromPatients < ActiveRecord::Migration
  def change
  	remove_column :patients, :adsress
  end
end
