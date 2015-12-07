###Recordly###

See original problem description below.

My instructions were to "work on this about an hour" to show in general how I 
would do things.

Personally, I would not be able to complete this task in the "3 to 5" hours
estimated in the problem description.

###Assumptions###
 - Use Ruby on Rails
 - Deploy to Heroku
 - Choose authentication lib

##So far##
 - Installed Rails
 - Created empty app
 - Created gemfile, did bundle install
 - Initialized git repo
 - Investigated devise gem - rejected as too complex for a sample app
 - Settled on has_secure_password with password:digest field
 - Decided not to use scaffolding although this is a small app
 - Created four models: User, Album, Artist, Song
 - Ran migrations
 - Created Heroku account and installed command line tools
 - Created Session controller, front_page action and front_page view
 - Created controllers: Users, Albums, Artists, Songs
 - Define relations: 
    Artist has_many :albums 
    Album has_many :songs
    Artist has_many :songs, through: :albums
 - A few tests (automated and console)
 - Initial deploy to heroku
 - Started to edit views and controllers

##TO DO##
 - Finish all CRUD logic
 - Make decision about users and favorites
 - Integrate "current user" logic
 - Add Favorites + functionality
 - Work on search feature (incremental via AJAX?)
 - Seed database and test iteratively
 - Test manually


##Problem description##

_Recordly_ will be an application that allows for users to input and store their record collection.  When complete, the user should be able to view their record collection, view a list of their "favorite" albums and/or songs, etc.  Duplicate albums/songs should not be allowed.  They should be able to "favorite" any of album/song/artist.

The site should have the following functionality:

- User login
- Search
- Views:
  - Albums
    - Individual album view with songs
  - Artists
  - Songs
  - Favorites
    - Albums
    - Artists
    - Songs

Using any language or framework you prefer, please build an application using testing and best practices.  Make the site have a mix of traditional CGI forms with page refreshes, as well as at least one each of an AJAX `GET` and `POST` (or some other modification type verb).  

Please provide a link for the GitHub repository and deployed url for the application so that we can see the various portions working. 

Please use git as you would if you were working on this in a professional environment.
