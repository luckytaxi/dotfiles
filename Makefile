SHELL := bash

.PHONY: all
all: dotfiles ## Installs the bin and etc directory files and the dotfiles.

.PHONY: dotfiles
dotfiles: ## Installs the dotfiles.

	for file in $(shell find $(CURDIR) -name "*.symlink" -not -path "*.git*"); do \
        f=$$(basename $$file); \
        ln -sfn $$file $(HOME)/.$${f%.*}; \
    done
