#!/bin/bash

echo -e "[] Refreshing all stow links...\n";

echo -e "  [󰑮] Running config...";
stow config -R --dotfiles -t ~/.config;
echo -e "  [] config done.\n";


echo -e "  [󰑮] Running vim...";
stow vim -R --dotfiles -t ~;
echo -e "  [] vim done.\n";

echo -e "  [󰑮] Running zsh...";
stow zsh -R --dotfiles -t ~;
echo -e "  [] zsh done.\n";

echo -e "  [󰑮] Running vim...";
stow vim -R --dotfiles -t ~;
echo -e "  [] vim done.\n";

echo -e "[] Refresh done."
