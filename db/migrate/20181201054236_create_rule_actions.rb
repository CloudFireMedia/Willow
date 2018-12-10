class CreateRuleActions < ActiveRecord::Migration[5.2]
  def change
    create_table :rule_actions do |t|
      t.references :rule, foreign_key: true
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
