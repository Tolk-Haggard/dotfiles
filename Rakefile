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

desc "Create sym_link for ssh config file"
task :sshconfig do
	dotfiles_dir = File.dirname(__FILE__)
	sshconfig = dotfiles_dir << "/ssh/config"
	puts "Creating sym link ~/.ssh/config to #{sshconfig}"
  puts `ln -s #{sshconfig} ~/.ssh/config`
end

desc "Copy public key to Object Storage Cluster"
task :os_pub_key do
	dotfiles_dir = File.dirname(__FILE__)
	puts `brew install ssh-copy-id`
	puts `cat #{dotfiles_dir}/ssh/inventory | xargs -n1 ssh-copy-id`
end

