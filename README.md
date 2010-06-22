Rails 3 Beta 4, memcached, Heroku
=================================

Rails 3 requires memcache-client.  On heroku the northscale memcache add-on requires the "memcached" gem.  Simply add both to your app, and you can run memcached with Rails3B4 on Heroku.  this simple app sets and updates a counter.  See the changes to see the actual code

Deploying
---------

    $ heroku create --stack bamboo
    $ heroku addons:add memcache:5mb
    $ git push heroku master
