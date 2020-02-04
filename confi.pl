#!/usr/bin/env perl -w

use strict;
use warnings;

print "Estas en debian?:\n";
chomp(my $respuesta = <>);

if (lc($respuesta) eq "si"){
    system("cat debian/sources.list > /etc/apt/sources.list");
    print "Repositorios actualizados\n";
}

my $path = $ENV{"HOME"};
symlink("vim/vimrc", $path . "/.vimrc");
mkdir($path . "/.vim");
symlink("vim/vim/coc-settings.json", $path . "/.vim/coc-settings.json");

symlink("Xresources/Xresources", $path . "/.Xresources");

symlink("zshrc/zshrc", $path . "/.zshrc");

symlink("editorconfig/editorconfig", $path . "/.editorconfig");

system("curl -L git.io/antigen > $path/.antigen.zsh");
