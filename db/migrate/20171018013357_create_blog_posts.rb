class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string  :title
      t.text    :body
      t.string  :header_image_url
      t.text    :short_description
      t.boolean :published, default: false
      t.string  :slug, null: false

      t.timestamps
    end

    add_index :blog_posts, :slug, unique: true
  end
end
