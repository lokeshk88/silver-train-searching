## Setup Rails framework and database configuration properly.To run this app !!!
Before clone process ...
<code>
sudo apt update

sudo apt install -y build-essential libssl-dev libreadline-dev zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init --no-rehash -)"' >> ~/.bashrc
exec bash

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec bash

</code>

version setup :-

# replace x.x.x with appropiate version
<code>
rbenv install x.x.x
rbenv global x.x.x
</code>




##########################################################################
After clone ...


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : # <b>3.2.2</b>

* System dependencies : # gem files,<imp>config</imp> file

* Configuration: # Install rvm or any version manager like <u>asdf</u>, <u>rbenv</u> packages for switching between <i>ruby versions easily.</i>

* Database creation: # 

* Database initialization:

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions(optional)
