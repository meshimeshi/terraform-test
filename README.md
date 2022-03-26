Docker
  image:ubuntu 18.04
    install:
      terraform
      awscli

terraform
  EC2を作成
    awscliのaccess-keyとsecret-access-keyは、ハードコーディングで設定する
      後日実装、「.env」ファイルから両keyを設定できるようにする
    ★★「.env」ファイルは.gitignoreに必ず入れる★★
      awsに不正アクセスされ破産する