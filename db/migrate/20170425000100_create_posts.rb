class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      #t.저장할 내용의 형태 "저장할 내용의 변수이름"
      #t.string "title" (예시1)
      #t.string "content" (예시2)
      #t.integer "57" (예시3)
      #t.datetime "5월5일" (예시4)
      #t.float "171.54" (예시4, 소수점자리까지 쓸 경우)
      
      t.string "title"
      t.string "content"
      
      
      t.timestamps null: false
    end
  end
end
