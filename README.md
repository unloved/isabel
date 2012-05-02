1. git clone git://github.com/unloved/isabel.git
2. cd isabel; bundle
3. git clone some_repo; cd some_repo; yardoc
4. cd ..
5. bundle exec ruby isabel.rb -o 127.0.0.1 -p 8888 >> ./log/file 2>&1 &