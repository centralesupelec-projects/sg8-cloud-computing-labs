-- create table for images

CREATE TABLE images
(
  imageid serial UNIQUE PRIMARY KEY,
  name character varying(255) NOT NULL, 
  description character varying(10485760) NOT NULL,
  url character varying(255) NOT NULL
);

ALTER TABLE images
  OWNER TO dockeruser;
ALTER ROLE dockeruser CONNECTION LIMIT -1;

-- add image data
INSERT INTO images (name, description, url) VALUES('cat 1', 'cat image', 'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 2','cat image', 'https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_1280.png');
INSERT INTO images (name, description, url) VALUES('cat 3', 'cat image', 'https://cdn.pixabay.com/photo/2017/03/14/14/49/cat-2143332_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 4','cat image', 'https://cdn.pixabay.com/photo/2018/07/08/14/16/cat-3523992_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 5', 'cat image', 'https://cdn.pixabay.com/photo/2015/11/16/22/14/cat-1046544_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 6', 'cat image', 'https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 7', 'cat image', 'https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 8', 'cat image', 'https://cdn.pixabay.com/photo/2017/08/23/08/33/cats-eyes-2671903_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 9', 'cat image', 'https://cdn.pixabay.com/photo/2020/04/04/09/55/cat-5001570_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 10', 'cat image', 'https://cdn.pixabay.com/photo/2015/06/19/14/20/cat-814952_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 11', 'cat image', 'https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_960_720.jpg');
INSERT INTO images (name, description, url) VALUES('cat 12', 'cat image', 'https://cdn.pixabay.com/photo/2015/01/31/12/36/cat-618470_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 13', 'cat image', 'https://cdn.pixabay.com/photo/2017/01/20/21/22/kitten-asleep-in-a-pot-1995961_1280.jpg');
INSERT INTO images (name, description, url) VALUES('cat 14', 'cat image', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg');
INSERT INTO images (name, description, url) VALUES('cat 15', 'cat image', 'https://cdn.pixabay.com/photo/2015/09/22/14/34/lion-951778_960_720.jpg');


