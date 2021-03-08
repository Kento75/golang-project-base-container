---- drop ----
DROP TABLE IF EXISTS `users`;

---- create ----
create table IF not exists `users`
(
  `id`               INT AUTO_INCREMENT,
  `name`             VARCHAR(30) NOT NULL,
  `age`              INT NOT NULL,
  `email`            VARCHAR(30),
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO users (id, name, age, email) VALUES (1, '新垣結衣', 30, 'aragaki-yui@mail.co.jp');
INSERT INTO users (id, name, age, email) VALUES (2, '山田太郎', 50, 'taro@mail.co.jp');
INSERT INTO users (id, name, age, email) VALUES (3, '山田孝之', 15, 'takayuki@mail.co.jp');
