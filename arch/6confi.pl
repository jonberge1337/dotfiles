#!/usr/bin/env perl -w

use strict;
use warnings;

my $home = $ENV{"HOME"};
createLink( "$home/dotfiles/xinitrc/xinitrc",       "$home/.xinitrc" );
createLink( "$home/dotfiles/Xresources/Xresources", "$home/.Xresources" );
createLink( "$home/dotfiles/zshrc/zshrc",           "$home/.zshrc" );
createLink( "$home/dotfiles/editorconfig/editorconfig",
    "$home/.editorconfig" );

createDir("$home/.config");
createDir("$home/.config/nvim");
createLink( "$home/dotfiles/neovim/init.vim", "$home/.config/nvim/init.vim" );
createLink( "$home/dotfiles/neovim/after",    "$home/.config/nvim/after" );
createDir("$home/.config/nvim/undodir");
system("nvim +PlugInstall +qall");
createLink( "$home/dotfiles/vimwiki", "$home/vimwiki" );
createDir("$home/.config/coc");
createLink( "$home/dotfiles/neovim/ultisnips",
    "$home/.config/coc/ultisnips" );
createDir("$home/.config/qutebrowser");
createLink(
    "$home/dotfiles/qutebrowser/config.py",
    "$home/.config/qutebrowser/config.py"
);
createDir("$home/.config/i3");
createLink( "$home/dotfiles/i3", "$home/.config/i3" );

sub createLink {
    my $orig = shift;
    my $new  = shift;
    if ( !-e "$new" ) {
        symlink( $orig, $new );
    }
}

sub createDir {
    my $dir = shift;
    if ( !-e $dir ) {
        mkdir $dir;
    }
}
