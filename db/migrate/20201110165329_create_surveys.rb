class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.jsonb :responses
      t.timestamps
    end
  end
end
