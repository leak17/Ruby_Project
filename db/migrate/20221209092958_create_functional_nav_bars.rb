class CreateFunctionalNavBars < ActiveRecord::Migration[7.0]
  def change
    create_table :functional_nav_bars do |t|
      t.string :home
      t.string :about
      t.string :community
      t.string :contact
      t.string :features
      t.string :login_sigup

      t.timestamps
    end
  end
end
