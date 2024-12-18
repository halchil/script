#!/bin/bash

# リポジトリ名を聞く
echo "Please enter the repository name:"
read repo_name

# 該当のリポジトリを削除する
repo_dir="./$repo_name"
if [ -d "$repo_dir" ]; then
    echo "Removing the repository directory: $repo_dir"
    rm -rf "$repo_dir"
else
    echo "No such repository directory found: $repo_dir"
fi

# GitHubからリポジトリをクローンする
echo "Cloning the repository from GitHub..."
git clone "https://github.com/halchil/$repo_name.git" #"/home/mainte/"

# 所有者とグループをmainte:mainteに変更する
echo "Changing owner and group to mainte:mainte..."
chown -R mainte:mainte "/home/mainte/$repo_name"

# 完了メッセージ
echo "Repository $repo_name has been cloned successfully."
