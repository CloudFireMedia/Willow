class CreateRuleFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :rule_filters do |t|
      t.references :rule, foreign_key: true
      t.references :filter, foreign_key: true

      t.timestamps
    end
  end
end
