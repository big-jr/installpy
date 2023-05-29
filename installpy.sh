echo "The first parameter was: $1"
PYTHON_VERSION=$1
echo "Trying to download Python version $PYTHON_VERSION from the download site"
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
echo "Python source downloaded"
echo "Extracting files"
tar -zxvf Python-$PYTHON_VERSION.tgz
echo "Files extracted - updating zlib reference"
cd Python-$PYTHON_VERSION
sed -i 's/^#[[:space:]]*zlib[[:space:]]*zlibmodule/zlib zlibmodule/g' ./Modules/Setup
echo "Building Python $PYTHON_VERSION"
./configure --enable-optimizations
echo "Now installing Python $PYTHON_VERSION"
sudo make altinstall
echo "Done"
