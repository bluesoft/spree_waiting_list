class ChangeWaitingListsToStockRequests < ActiveRecord::Migration[4.2]
  def self.up
    rename_table :waiting_lists, :stock_requests
  end

  def self.down
    rename_table :stock_requests, :waiting_lists
  end
end
