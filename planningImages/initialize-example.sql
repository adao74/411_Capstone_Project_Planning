-- Wishlist Table
CREATE TABLE wishlists (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Wishlist Items Table
CREATE TABLE wishlist_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  wishlist_id INT NOT NULL,
  item VARCHAR(255) NOT NULL,
  FOREIGN KEY (wishlist_id) REFERENCES wishlists(id) ON DELETE CASCADE
);
