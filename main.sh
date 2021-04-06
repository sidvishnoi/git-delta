delta_version="0.7.1"
delta_release_url="https://github.com/dandavison/delta/releases/download/$delta_version/delta-$delta_version-x86_64-unknown-linux-gnu.tar.gz"
downloaded_file="/tmp/delta.tar.gz"

echo "Downloading delta v$delta_version from $delta_release_url ..."
wget -q -O "$downloaded_file" "$delta_release_url"

mkdir -p /tmp/delta
echo
echo "Extracting $downloaded_file"
tar xvzf "$downloaded_file" -C /tmp/delta/ --strip-components=1

bin_path="$HOME/.local/bin"
mkdir -p "$bin_path"
echo
echo "Copy delta (bin) to $bin_path ..."
mv /tmp/delta/delta "$bin_path/"

export PATH="$bin_path:$PATH"
echo bin_path >> $GITHUB_PATH

echo
echo "[INFO] Installed delta in $bin_path and added to path."
printf "$ delta --version\n\t> $(delta --version)\n"
