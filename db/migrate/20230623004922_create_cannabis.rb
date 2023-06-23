class CreateCannabis < ActiveRecord::Migration[7.0]
  def change
    create_table :cannabis do |t|
      t.string :strain
      t.string :medical_use
      t.string :health_benefit

      t.timestamps
    end
  end
end
