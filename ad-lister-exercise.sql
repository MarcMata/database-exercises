USE `ad-lister-template`;

# For a given ad, what is the email address of the user that created it?

SELECT ads.title, users.email
FROM ads
JOIN users ON ads.user_id = users.id;

# For a given ad, what category, or categories, does it belong to?

SELECT ads.title, categories.category from Ads
JOIN associative_table ON ads.id = associative_table.ad_id
JOIN categories ON associative_table.cat_id = categories.cat_id;

# For a given category, show all the ads that are in that category.

SELECT  categories.category, ads.title FROM ads
JOIN associative_table ON ads.id = associative_table.ad_id
JOIN categories ON associative_table.cat_id = categories.cat_id;

# For a given user, show all the ads they have posted.

SELECT users.email, ads.title FROM ads
JOIN users ON ads.user_id = users.id;