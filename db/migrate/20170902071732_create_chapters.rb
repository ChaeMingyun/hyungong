class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.belongs_to :lecture
      # 단원 이름
      t.string :title
      # 단원 순서
      t.integer :order
      # 동영상 url
      t.string :video

      t.timestamps
    end
  end
end
