class CreateMovies < ActiveRecord::Migration[6.1]
    def change
        create_table :movies do |t|
            t.string :title
            t.string :director
            t.string :description
            t.boolean :showing
        end
    end
end
