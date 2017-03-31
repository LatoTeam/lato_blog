class CreateLatoBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :lato_blog_posts do |t|
      t.string :title
      t.text :content
      t.string :excerpt
      t.string :subtitle
      t.string :status
      t.string :pretty_url
      t.datetime :pubblication_date

      t.timestamps
    end
  end
end
