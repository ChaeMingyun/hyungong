class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      # 카테고리
      t.string :category
      # 제목
      t.string :title
      # 상태 (upload:등록됨 apply:승인요청중 refused:승인거절됨 sale:판매중 stop:판매중단)
      ## upload -> apply -> refused || sale -> stop
      t.string :state, default: 'upload'
      # 가격
      t.integer :price, default: 0
      t.timestamps
    end
  end
end
