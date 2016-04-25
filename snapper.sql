CREATE DATABASE snapper_db;

\c snapper_db


CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  name VARCHAR(50),
  password_digest VARCHAR(500) NOT NULL
  
);


CREATE TABLE photos (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  description TEXT,
  image_url VARCHAR(300)
  
);


INSERT INTO photos (name, image_url, description) VALUES ('holiday snaps', 'http://www.simplyrecipes.com/wp-content/uploads/2006/12/prime-rib-640-dm.jpg', "going to france");


ALTER TABLE users ADD user_img VARCHAR(300);

INSERT INTO users (user_img) VALUES ('http://www.simplyrecipes.com/wp-content/uploads/2006/12/prime-rib-640-dm.jpg');



somevariable = User.find(1)

somevariable.user_img = "https://scontent.fmel2-1.fna.fbcdn.net/hphotos-xpf1/v/t1.0-9/11174811_10153428958356477_4950671395583389991_n.jpg?oh=dbd8d40497571ec0950c24c2f5ded079&oe=57AC8B94"

somevariable.save



somevariable2 = User.find(2)

somevariable2.user_img = "https://scontent.fmel2-1.fna.fbcdn.net/hphotos-ash4/v/t1.0-9/1888735_10152794934811477_81881268619123402_n.jpg?oh=0c8ab20e5e65e1d4f9cd7972b612cba2&oe=57BEF73B"

somevariable2.save

ALTER TABLE photos ADD user_id INTEGER;




