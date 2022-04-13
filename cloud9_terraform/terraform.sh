# 実行前にこのファイル(terraform.sh)に実行権限を与えること
# chmod 755 terraform.sh

# バッチ実行
# ./terraform.sh

# -----------1.tfenvのインストール-----------
# tfenvファイル群を取得
git clone https://github.com/tfutils/tfenv.git ~/.tfenv

# ファイル配置
sudo ln -s ~/.tfenv/bin/* /usr/local/bin

# tfenvインストール(2022/4/13時点1.1.8)
tfenv install 1.1.8

# 使用するtfenvバージョンを指定
tfenv use 1.1.8

# -----------2.TFLintのインストール-----------
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash 
os=linux_amd64

# -----------2.tfsecのインストール-----------
# バージョンは下記参照(2022/4/13時点1.18.0)
# https://github.com/aquasecurity/tfsec/releases
curl -L https://github.com/aquasecurity/tfsec/releases/download/v1.18.0/tfsec-linux-amd64 --output tfsec

# 実行権限付与
chmod +x tfsec

# ファイル配置
sudo mv tfsec /usr/local/bin/