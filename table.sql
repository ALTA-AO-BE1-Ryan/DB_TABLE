CREATE TABLE user(
    user_id int PRIMARY KEY,
    name char (50) NOT NULL
    pasword char (50) NOT NULL
);
CREATE TABLE film(
    film_id int auto_increment PRIMARY KEY
    film_name varchar (255) NOT NULL,
    publish_date datetime NOT NULL,
);
CREATE TABLE category(
    category_id int auto_increment PRIMARY KEY
    category_name varchar (255) NOT NULL
);
CREATE TABLE artis(
    artis_id int auto_increment PRIMARY KEY
    artis_name char (25) NOT NULL
    artis_dobe datetime   
); 
CREATE table daftar_nonton(
    user_id int,
    film_id int,
    tanggal_nonton datetime,
    FOREIGN KEY (user_id) REFRENCES user (user_id)
    FOREIGN KEY (film_id) REFRENCES film (film_id)
    PRIMARY KEY (user_id, film_id)
);
CREATE TABLE CAST(
  film_id int,
  artis_id varchar (255),
  FOREIGN KEY (film_id) REFRENCES film (film_id)
);