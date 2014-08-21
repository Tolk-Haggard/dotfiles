task :default do
	puts "welcome to dotfiles"
end

desc "Create sym_link for .vimrc file"
task :vimrc do
	dotfiles_dir = File.dirname(__FILE__)
	vimrc = dotfiles_dir << "/vim/.vimrc"
	puts "Creating sym link ~/.vimrc to #{vimrc}"
  puts `ln -s #{vimrc} ~/.vimrc`
end
