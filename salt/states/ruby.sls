# RVM now requires imported GPG keys to validate
install-rvm-keys:
  cmd.run:
    - name: gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

ruby-2.2.0:
  rvm.installed:
    - default: True
    - current: True
    - require:
      - cmd: install-rvm-keys



/usr/local/rvm:
  file.directory:
    - user: vagrant
    - group: rvm
    - recurse:
      - user
      - group
    - require:
      - rvm: ruby-2.2.0


