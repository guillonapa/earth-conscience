class CreateArticleStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :article_statistics do |t|
      t.string :page_name
      t.integer :likes

      t.timestamps
    end
  end
end
