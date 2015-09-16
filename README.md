Functional Programming
----------------------

I'm learning about functional programming and this repo is just the place to mantain all the code I'll write.

### Vagrant & Ansible

If you are familiar with `vagrant` and `ansible`, just run `vagrant up` and then you should have an Ubuntu 14.04 VM with vim, tmux and haskell-platform installed. The haskell-platform installation takes several minutes.

### MIT Scheme installation

I couldn't install mit-scheme via ansible so this were the steps I followed to install it in my vagrant machine:

* Install Ubuntu 14.04 dependencies:

```sudo apt-get install debhelper m4 autotools-dev libssl-dev libmhash-dev libmcrypt-dev libgdbm-dev libpq-dev libncurses5-dev libx11-dev libxt-dev libdb-dev libltdl-dev```

*  Download source code:

```wget http://ftp.gnu.org/gnu/mit-scheme/stable.pkg/9.2/mit-scheme-9.2-x86-64.tar.gz```

* Extract data:

```tar xzf mit-scheme-9.2-x86-64.tar.gz```

* Install it via make:

```
cd mit-scheme-9.2/src
./configure
make compile-microcode
sudo make install
```
