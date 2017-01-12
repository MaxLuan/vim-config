path=`echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"`

# backup old files
mv ~/.vim $path/.vim.bak
mv ~/.vimrc $path/.vimrc.bak

# create symlinks
ln -s $path/.vimrc ~/.vimrc
ln -s $path/.vim ~/.vim
