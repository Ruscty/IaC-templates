# 参考記事
1. https://dev.classmethod.jp/articles/cross-account-codecommit-codepipeline-in-fargate-with-cfn/
2. https://dev.classmethod.jp/articles/simple-terraform-cicd-pipeline-with-aws-codepipeline/

# 前提条件
1. repository accountにすでにCodeCommitが作成済み
2. リポジトリに「buildspec-plan.yml」「buildspec-apply.yml」「config.tf」「s3.tf」を格納する
    →「config.tf」のステートファイル格納S3バケットを定義すること
    →「s3.tf」これから作成するS3バケット名を定義すること
3. (productアカウントにKMSキーが作成されている。なければCfnのテンプレート使用しても良い)
※ただし何度もキーを作成・削除するとキーがどんどん増えて課金されるので注意。

# 手動対応
1. KMSキーポリシー(使用権限)にCodeBuildロールを追加する。
2. BuildロールにTerraformで作成するリソースの権限を与えること。
   (Cfn(01_prepare.yml)実行前にIAMポリシーを書き換えでも良い)