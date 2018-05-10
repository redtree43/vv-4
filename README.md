# README

# Vintage Voyage
## https://vintagevoyage.herokuapp.com

Vintage Voyage is the world's premier two sided marketplace designed exclusively for the selling and purchasing of vintage clothing through the web. 

## Contents
- **[Problem](#Problem)**
- **[Solution](#Solution)**
- **[Project Management](#ProjectManagement)**
- **[User Stories](#UserStories)**
- **[Entity Relationship Diagram](#ERD)**
- **[Mood Board](#Moodboard)**
- **[Wireframes](#Wireframes)**
- **[Features](#Features)**
- **[Ruby Gems](#RubyGem)**
- **[Challenges](#Challenges)**
- **[Final Product](#FinalProduct)**




## <a id="Problem"></a>Problem
Vintage clothing (i.e. pre 1980's pieces) have experienced a resurgence in popularity around the world over the last decade. Vintage clothing stocks and styles are distributed globally with different styles being popular in different locations. While brick and mortar clothing stores are common, the ecommerce presence of vintage stores is low with most options only selling vintage through consignment. My research into the market has shown that there is already significant amount of online vintage trading taking place through services like Facebook, but there are no dedicated marketplaces for the buying and selling of vintage.

## <a id="Solution"></a>Solution
Vintage Voyage will allow vintage buyers and sellers to connect online to sell and purchase clothing. It will also provide standardised sizing of clothing across time (e.g. a size 8 in the 1950s is a size 10 today) and location (a large in China may be only a small in Australia). Users will be able to list clothing that they wish to sell and purchase clothing that they like from others. The site will manage all payments & security.

## <a id="ProjectManagement"></a>Project Management
In combination with my notepad, Trello was used as my task management tool. It allowed me to scope my project prior to starting and keep track of where I was at throughout.

![](/docs/images/trello.png)

## <a id="UserStories"></a>User Stories
### Buyers
- As a buyer I want to be able to know that the clothing will fit me so that I can wear it
- As a buyer I want to know that the product is in the advertised condition so that I don't buy poor quality or damaged clothing
- As a buyer I want to be able to look at a seller's profile so that if I like their style I can purchase multiple items
- As a buyer I want to know that the products I am buying is a genuine article and not a fake so that I am buying what I want
- As a buyer I want to know the location of my seller so that I can narrow by regional style, delivery style etc
- As a buyer/seller I want different delivery methods available so that I can provide varying level of service.
- As a buyer I want to have a clear image of the product so that I can see what I'm buying
- As a buyer I want to be able to filter the results so that I can find the items I want to be

### Sellers
- As a seller I want to list my sales products so that customers can buy them
- As a seller I want to the process to list my sales items to be easy and quick
- As a seller I want to receive my funds in a timely fashion after a sale so that I make money
- As a seller I want to be able to message the buyer so that I can identify any concerns
- As a seller I want my own profile so that buyers can easily find the other products I am selling
- As a seller I want to be able to see my sales history so that I know what I have sold
- As a seller I want to be able to buy and sell from the same account so that it is more convenient

## <a id="ERD"></a>ERD
I originally had lofty plans for my database design but realised that I didn't have the technical skill to back it up so I went for a simpler model in the end. Users would be able to place orders, list products, create a profile, and message each other.

![](/docs/images/ERD.png)

## <a id="Moodboard"></a>Mood Board
My moodboard was predominantly made up of images from the 1950s. The colours in these photos are a mix of vibrant and soft and generally the clothing stands out against a more mellow background. I went with a similar colour scheme for the website using a pastel green, rich brown, and a soft cream.

![](/docs/images/trello.png)

## <a id="Wireframes"></a>Wireframes

![](/docs/images/wireframes.png)
![](/docs/images/user_flow.png)
![](/docs/images/colours_&_fonts.png)

## <a id="RubyGem"></a>Ruby Gems I used in this Project
- 'image_processing', '~> 1.2'
- "shrine", "~> 2.0"
- 'devise'
- 'dotenv-rails', groups: [:development, :test]
- 'pg'
- 'stripe'
- 'mailgun-ruby', '~>1.1.6'

## <a id="Challenges"></a>Challenges
- I restarted my project from scratch 3 times after messing up my database. On the 4th restart I forgot to initialise the project with Postgresql and so needed to make some quick changes with the help of others to make my app deployable to Heroku.
- At the beginning of the project my understanding of the MVC structure was quite weak and this lead to difficulties in implementing the project I had scoped.
- Managing all the different branches in Git was confusing at first and required me to learn how to rebase after I unwittingly messed up my branches.
- Many thanks to everyone who assisted me in overcoming difficulties throughout this project. 

## <a id="FinalProduct"></a>Final Product
![](/docs/images/final_project.png)