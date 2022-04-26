# 参考記事
1. https://dev.classmethod.jp/articles/cross-account-codecommit-codepipeline-in-fargate-with-cfn/
2. https://dev.classmethod.jp/articles/simple-terraform-cicd-pipeline-with-aws-codepipeline/

# 前提条件
1. repository accountにすでにCodeCommitが作成済み
2. (KMSキーが作成されている。なければCfnのテンプレート使用しても良い)
※ただし何度もキーを作成・削除するとキーがどんどん増えて課金されるので注意。

# 手動対応
1. KMSキーポリシー(使用権限)にCodeBuildロールを追加する。
2. BuildロールにTerraformで作成するリソースの権限を与えること。