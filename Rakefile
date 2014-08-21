task :default => [:vimrc, :sshconfig,  :bash_funs] do
	puts "If you want to setup git, run the setup_git task"
	puts "If you want to copy your public key to all known cloud hosts, run os_pub_key"
end

desc "Create sym_link for .vimrc file"
task :vimrc do
	dotfiles_dir = File.dirname(__FILE__)
	vimrc = dotfiles_dir << "/vim/.vimrc"
	puts "Creating sym link ~/.vimrc to #{vimrc}"
  puts `ln -s #{vimrc} ~/.vimrc`
	puts `mkdir ~/.vim_backup`
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

desc "Sane git settings"
task :setup_git, [:name, :email] do |t, args|
	[ 'alias.staged "diff --cached"', 'alias.br branch', 'alias.co checkout',
		'alias.amend "commit --amend"', 'alias.st status', 'alias.ci commit',
		'alias.gp "push origin HEAD"', "user.email #{args[:email]}", "user.name \"#{args[:name]}\"",
		'core.editor vim', 'alias.rb rebase'
	].each { |command| `git config --global #{command}`}
	puts `cat ~/.gitconfig`
end

desc "bash helper functions"
task :bash_funs do 
	bash_profile_path = ENV['HOME'] + '/.bash_profile'
	source_funs_cmd = 'source ~/.bash_funs'
 	include_cmd = 'source ~/bash_funs'
 	dotfiles_dir = File.dirname(__FILE__)
 	puts `ln -sf #{dotfiles_dir}/bash/.bash_funs ~/.bash_funs`
	bash_profile_contents = File.read bash_profile_path
	unless bash_profile_contents.include? source_funs_cmd 
		open(bash_profile_path, 'a') do |f|
				f.puts "\n" << source_funs_cmd
		end
		puts "\"#{source_funs_cmd}\" added to #{bash_profile_path}"
	end
	puts `fgrep function ~/.bash_funs`
end
