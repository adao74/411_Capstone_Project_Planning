# JS_411 Capstone Planning

My capstone project is a Wishlist App.

## Core functions

- Create an Account
- Sign in
- Display your Wishlists
- Create a Wishlist from items retrieved from the [Best Buy API](https://bestbuyapis.github.io/api-documentation/)
- Delete a Wishlist

## Trello Board

My trello board for tasks to be completed: https://trello.com/b/9DxcDkos/js411-capstone.

## Backend design

- Avien MySQL Database https://aiven.io/
- For database table structure, see [Database table design](./planningImages/Database%20table%20design.png)

## Frontend design

REACT routes:
- / => SignIn component 
- /create-account => Account component
- /homepage => WishlistPage component
- /new-wishlist => CreateWishlist component

Components:
- When WishListPage component mounts: fetch Wishlists from database (for global state), renders Wishlist components
    - Example: see https://github.com/adao74/411_news_articles 
- Wishlist component: shows Wishlist name, includes Expand & Trash icon
    - Example: see https://github.com/adao74/411_wk6_day1_redux_thunk
    - Expand icon: Reveals more wishlist details (local state changes) on click
    - Delete icon: Deletes the wishlist from database (global state changes) 
- CreateWishlist component: fetch items from the Best Buy API, renders Item component for each item
    - When click Create Wishlist button, stores your desired wishlist (from local state) in database (global state changes)
- Item component: item name, includes checkbox icon
    - When click checkbox icon: store item in local state (local state changes)