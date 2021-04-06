class ThisShouldBreak < ActiveRecord::Migration[6.0]
  def up
    Author.count
    execute "SELECT * from authors"
  end

  def down
    # no-op
  end
end
