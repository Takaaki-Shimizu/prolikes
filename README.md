# Prolikes/プログラミング学習記録アプリ
![74ed180a329d884890f257f92e027279](https://user-images.githubusercontent.com/50174168/66080903-f5551500-e5a1-11e9-9641-b61930995fe7.gif)
***
![55746de89207c9d3a08f53cd14ac67f1](https://user-images.githubusercontent.com/50174168/66082717-ae691e80-e5a5-11e9-9e68-ac3c3ddad680.gif)
***
![940eab77c073aa684dcb426886629722](https://user-images.githubusercontent.com/50174168/66082689-9d201200-e5a5-11e9-963d-701a5b62591f.gif)
***
1. アプリケーションの概要  
  **名前/機能**  
    Prolikes/プログラミング学習記録アプリ  
  **作成理由**  
    プログラミング学習の記録サイトを作ることで、特に初学者のコミュニティ形成かつやる気の持続、企業が未経験者を探しやすくなることを期待した。  

1. 機能一覧  
  **基本機能**  
    ユーザーを検索する  
    投稿一覧を見る（ページネーション実装）  
    投稿の詳細（コメント/良いね数）を見る（ページネーション実装）  
    投稿者のマイページを見る  
    投稿者が良いねした一覧を見る  
    便利ツール&学習サイトへのアクセス  
  **ログインして使える機能**  
    学習時間の記録・削除（本日の学習時間&目標学習時間）/総学習時間計算・目標時間までの差分計算  
    文章の投稿・削除・編集  
    投稿に対してのコメント  
    投稿詳細ページでのいいね！  
    マイページの編集(プログラミングに対しての興味関心)  

1. 使用している技術一覧  
  **言語・フレームワーク**  
    ruby 2.5.1  
    Ruby On Rails 5.2.3  
  **データベース**  
    MySQL2  
  **主要な技術**  
    フロント            : Materialize.css/jQuery/HTML/SCSS  
    ログイン機能         : gem 'devise'  
    画像アップロード機能  : gem 'mini_magick'  
    ユーザー検索機能      : gem 'ransack'  
    ページネーション      : gem 'kaminari'  
    デバッグ             : gem 'pry-rails'  
    
1. ER図（gem 'rails-erd'で作成）
<img width="791" alt="スクリーンショット 2019-10-03 5 24 10" src="https://user-images.githubusercontent.com/50174168/66079928-0ac93f80-e5a0-11e9-8660-753ba3b80b29.png">

