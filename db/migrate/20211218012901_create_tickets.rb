class CreateTickets < ActiveRecord::Migration[6.1]
    def change
        create_table :tick445ets do |t|
            t.string :name
            t.float :price
        end
    end
end
