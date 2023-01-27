SELECT * FROM users;DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.subscriptions(
      Plans_id INT PRIMARY KEY AUTO_INCREMENT,
      plans_name VARCHAR(45) NOT NULL,
      pricing DECIMAL(3,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artist(
      artist_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      artist_name VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      user_id INT PRIMARY KEY AUTO_INCREMENT,
      username VARCHAR(50) NOT NULL,
      age INT NOT NULL,
      plans_id INT NOT NULL,
      date_signatures DATE NOT NULL,
      FOREIGN KEY (plans_id) REFERENCES SpotifyClone.subscriptions(plans_id)     
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.albums(
      album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      album_title VARCHAR(50) NOT NULL,
      artist_id INT NOT NULL,
      release_year YEAR,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (artist_id)
  ) engine = InnoDB;

     CREATE TABLE SpotifyClone.songs(
      songs_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      songs_title VARCHAR(50) NOT NULL,
      artist_id INT NOT NULL,
      album_id INT NOT NULL,
      length_seconds INT,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (artist_id),
      FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history(
      user_id INTEGER,
      music_playback_history INTEGER,
      data_reproducao DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, music_playback_history),
      FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
      FOREIGN KEY (music_playback_history) REFERENCES SpotifyClone.songs(songs_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artist_followers_table_name(
      user_id INTEGER,
      artist_id INTEGER,
      CONSTRAINT PRIMARY KEY (user_id, artist_id),
      FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
  ) engine = InnoDB;


  INSERT INTO SpotifyClone.subscriptions (plans_name, pricing)
  VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitario', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.artist (artist_name)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.users (username, age, plans_id, date_signatures)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace', 37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 2, '2017-01-17'),
    ('Sandi Metz', 58, 2, '2018-04-29'),
    ('Paulo Freire', 19, 3, '2018-02-14'),
    ('Bell Hooks', 26, 3, '2018-01-05'),
    ('Christopher Alexander', 85, 4, '2019-06-05'),
    ('Judith Butler', 45, 4, '2020-05-13'),
    ('Jorge Amado', 58, 4, '2017-02-17');
  
  INSERT INTO SpotifyClone.albums (album_title, artist_id, release_year)
  VALUES
    ('Renaissance', 1, '2022'),
    ('Jazz', 2, '1978'),
    ('Hot Space', 2, '1982'),
    ('Falso Brilhante', 3, '1998'),
    ('Vento de Maio', 3, '2001'),
    ('QVVJFA?', 4, '2003'),
    ('Somewhere Far Beyond', 5, '2007'),
    ('I Put A Spell On You', 6, '2012');
  
  INSERT INTO SpotifyClone.songs (songs_title, artist_id, album_id, length_seconds)
  VALUES
    ("BREAK MY SOUL", 1, 1, 279),
    ("VIRGO’S GROOVE", 1, 1, 369),
    ("ALIEN SUPERSTAR", 1, 1, 116),
    ("Don’t Stop Me Now", 2, 2, 203),
    ("Under Pressure", 2, 3, 152),
    ("Como Nossos Pais", 3, 4, 105),
    ("O Medo de Amar é o Medo de Ser Livre", 3, 5, 207),
    ("Samba em Paris", 4, 6, 267),
    ("The Bard’s Song", 5, 7, 244),
    ("Feeling Good", 6, 8, 100);

  INSERT INTO SpotifyClone.history (user_id, music_playback_history, data_reproducao)
  VALUES
    (1, 8, "2022-02-28 10:45:55"),
    (1, 2, "2020-05-02 05:30:35"),
    (1, 10, "2020-03-06 11:22:33"),
    (2, 10, "2022-08-05 08:05:17"),
    (2, 7, "2020-01-02 07:40:33"),
    (3, 10, "2020-11-13 16:55:13"),
    (3, 2, "2020-12-05 18:38:30"),
    (4, 8, "2021-08-15 17:10:10"),
    (5, 8, "2022-01-09 01:44:33"),
    (5, 5, "2020-08-06 15:23:43"),
    (6, 7, "2017-01-24 00:31:17"),
    (6, 1, "2017-10-12 12:35:20"),
    (7, 4, "2011-12-15 22:30:49"),
    (8, 4, "2012-03-17 14:56:41"),
    (9, 9, "2022-02-24 21:14:22"),
    (10, 3, "2015-12-13 08:30:22");
    
  INSERT INTO SpotifyClone.artist_followers_table_name (user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);
