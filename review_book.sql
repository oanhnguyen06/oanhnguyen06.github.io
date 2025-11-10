CREATE DATABASE review_book;

USE review_book;
CREATE TABLE users (
    username VARCHAR(255) NOT NULL PRIMARY KEY,
    fullName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') NOT NULL
);

INSERT INTO users (username, fullName, email, password, role)
VALUES ('jangjang', 'Bạch Thanh Giang', 'bachthanhgiang1306@gmail.com', '$2a$10$NYgQLcHjY8kk24rsOlhl.eL/12/Ife6c/sfdc9uSbZM00v50RGZoG', 'admin');

USE review_book;
SELECT * FROM books;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre ENUM('Phát triển bản thân', 'Khoa học công nghệ kinh tế', 'Văn học nghệ thuật', 'Văn hóa lịch sử') NOT NULL,
    year INT NOT NULL,
    description TEXT,
    image VARCHAR(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (title, author, genre, year, description, image) VALUES 
('Đắc Nhân Tâm', 'Dale Carnegie', 'Phát triển bản thân', 1936, 'Đắc Nhân Tâm là cuốn sách kinh điển của Dale Carnegie về nghệ thuật giao tiếp và ứng xử trong cuộc sống. Cuốn sách này sẽ giúp bạn xây dựng mối quan hệ tốt đẹp với mọi người xung quanh, từ đó đạt được thành công trong cả sự nghiệp và cuộc sống.', 'img/books/book1.jpg'),
('7 Thói Quen Hiệu Quả', 'Stephen R. Covey', 'Phát triển bản thân', 1989, '7 Thói Quen Hiệu Quả cung cấp những thói quen cần thiết để trở thành người thành đạt và hiệu quả. Stephen Covey đã chia sẻ những nguyên tắc và phương pháp giúp bạn thay đổi tư duy và hành động để đạt được mục tiêu của mình.', 'img/books/book2.jpg'),
('Quẳng Gánh Lo Đi & Vui Sống', 'Dale Carnegie', 'Phát triển bản thân', 1948, 'Quẳng Gánh Lo Đi & Vui Sống là cuốn sách giúp bạn học cách đối phó với căng thẳng và lo âu. Dale Carnegie đưa ra những lời khuyên thiết thực để bạn có thể sống một cuộc sống hạnh phúc và an lành.', 'img/books/book3.jpg'),
('Đời Ngắn Đừng Ngủ Dài', 'Robin Sharma', 'Phát triển bản thân', 2004, 'Đời Ngắn Đừng Ngủ Dài khuyến khích bạn sống hết mình và tận dụng mọi khoảnh khắc của cuộc sống. Robin Sharma chia sẻ những câu chuyện truyền cảm hứng và bài học giá trị để bạn theo đuổi ước mơ và đam mê của mình.', 'img/books/book4.jpg'),
('Bước chậm lại giữa thế gian vội vã', 'Hae Min', 'Phát triển bản thân', 2012, 'Bước chậm lại giữa thế gian vội vã là cuốn sách của thiền sư Hae Min, giúp bạn tìm lại sự bình yên và cân bằng trong cuộc sống hiện đại đầy hối hả. Cuốn sách mang đến những triết lý sâu sắc và những bài học về tình yêu, hạnh phúc và sự tĩnh lặng.', 'img/books/book5.jpg'),
('Cách Sống: Từ Bình Thường Trở Nên Phi Thường', 'Inamori Kazuo', 'Phát triển bản thân', 2009, 'Cách Sống: Từ Bình Thường Trở Nên Phi Thường là cuốn sách của doanh nhân Inamori Kazuo, chia sẻ những bí quyết và triết lý sống giúp bạn trở nên xuất sắc và đạt được thành công vượt bậc. Cuốn sách tập trung vào những giá trị cơ bản và cách áp dụng chúng vào cuộc sống hàng ngày.', 'img/books/book6.jpg'),
('Đời Thay Đổi Khi Chúng Ta Thay Đổi', 'Andrew Matthews', 'Phát triển bản thân', 1990, 'Đời Thay Đổi Khi Chúng Ta Thay Đổi là cuốn sách giúp bạn nhận ra rằng cuộc sống phụ thuộc vào cách chúng ta nhìn nhận và hành động. Andrew Matthews khuyến khích bạn thay đổi tư duy và thái độ để tạo ra những thay đổi tích cực trong cuộc sống.', 'img/books/book7.jpg'),
('Khéo ăn nói sẽ có được thiên hạ', 'Trác Nhã', 'Phát triển bản thân', 2013, 'Khéo ăn nói sẽ có được thiên hạ là cuốn sách của Trác Nhã, giúp bạn cải thiện kỹ năng giao tiếp và ứng xử. Cuốn sách này cung cấp những bí quyết và kỹ năng để bạn trở nên tự tin và thu hút trong giao tiếp hàng ngày.', 'img/books/book8.jpg'),
('Đánh Thức Con Người Phi Thường Trong Bạn', 'Anthony Robbins', 'Phát triển bản thân', 1991, 'Đánh Thức Con Người Phi Thường Trong Bạn là cuốn sách của Anthony Robbins, giúp bạn khám phá và phát huy tối đa tiềm năng của bản thân. Robbins chia sẻ những chiến lược và kỹ năng để bạn đạt được thành công và hạnh phúc trong cuộc sống.', 'img/books/book9.jpg'),
('Tự Truyện Benjamin Franklin', 'Benjamin Franklin', 'Phát triển bản thân', 1791, 'Tự Truyện Benjamin Franklin là cuốn sách ghi lại cuộc đời và sự nghiệp của Benjamin Franklin, một trong những nhân vật quan trọng nhất trong lịch sử Mỹ. Cuốn sách mang đến những bài học quý giá về sự kiên trì, sáng tạo và tinh thần học hỏi không ngừng.', 'img/books/book10.jpg'),
('Dám Bị Ghét', 'Ichiro Kishimi & Fumitake Koga', 'Phát triển bản thân', 2013, 'Dám Bị Ghét là cuốn sách của hai tác giả Ichiro Kishimi và Fumitake Koga, giúp bạn nhận ra giá trị của bản thân và sống một cuộc sống tự do, không bị ràng buộc bởi ý kiến của người khác. Cuốn sách dựa trên triết lý của Alfred Adler, khuyến khích bạn sống một cuộc sống ý nghĩa và hạnh phúc.', 'img/books/book11.jpg'),
('Tư Duy Nhanh Và Chậm', 'Daniel Kahneman', 'Phát triển bản thân', 2011, 'Tư Duy Nhanh Và Chậm là cuốn sách của nhà tâm lý học Daniel Kahneman, giúp bạn hiểu rõ hơn về cách tư duy và ra quyết định. Kahneman giải thích sự khác biệt giữa tư duy nhanh (trực giác) và tư duy chậm (logic), từ đó giúp bạn cải thiện kỹ năng ra quyết định.', 'img/books/book12.jpg'),
('7 thói quen của người thành đạt', 'Stephen R. Covey', 'Phát triển bản thân', 1989, '7 Thói Quen Của Người Thành Đạt là cuốn sách kinh điển của Stephen Covey, giúp bạn xây dựng những thói quen hiệu quả để đạt được thành công trong cuộc sống. Covey chia sẻ những nguyên tắc và phương pháp giúp bạn thay đổi tư duy và hành động để đạt được mục tiêu của mình.', 'img/books/book13.jpg'),
('Trên đường băng – Tony buổi sáng', 'Tony Buổi Sáng', 'Phát triển bản thân', 2015, 'Trên Đường Băng là cuốn sách của Tony Buổi Sáng, mang đến những câu chuyện và bài học ý nghĩa về cuộc sống và sự nghiệp. Cuốn sách khuyến khích bạn sống hết mình, tận dụng mọi cơ hội và không ngừng học hỏi để phát triển bản thân.', 'img/books/book14.jpg'),
('Làm chủ tư duy, thay đổi vận mệnh', 'Adam Khoo', 'Phát triển bản thân', 2004, 'Làm Chủ Tư Duy, Thay Đổi Vận Mệnh là cuốn sách của Adam Khoo, giúp bạn hiểu rõ hơn về sức mạnh của tư duy và cách thay đổi suy nghĩ để đạt được thành công. Cuốn sách cung cấp những công cụ và kỹ năng để bạn làm chủ tư duy và thay đổi cuộc sống của mình.', 'img/books/book15.jpg'),
('Nghĩ giàu giàu làm', 'Napoleon Hill', 'Phát triển bản thân', 1937, 'Nghĩ Giàu Giàu Làm là cuốn sách kinh điển của Napoleon Hill, giúp bạn hiểu rõ hơn về sức mạnh của tư duy tích cực và cách đạt được thành công tài chính. Hill chia sẻ những nguyên tắc và phương pháp giúp bạn thay đổi tư duy và hành động để đạt được mục tiêu tài chính.', 'img/books/book16.jpg'),
('Bảy chiến lược thịnh vượng và hạnh phúc', 'Jim Rohn', 'Phát triển bản thân', 1986, 'Bảy Chiến Lược Thịnh Vượng Và Hạnh Phúc là cuốn sách của Jim Rohn, giúp bạn xây dựng một cuộc sống thịnh vượng và hạnh phúc. Rohn chia sẻ những chiến lược và kỹ năng cần thiết để bạn đạt được mục tiêu và sống một cuộc sống ý nghĩa.', 'img/books/book17.jpg'),
('Tuổi trẻ đáng giá bao nhiêu', 'Rosie Nguyễn', 'Phát triển bản thân', 2016, 'Tuổi Trẻ Đáng Giá Bao Nhiêu là cuốn sách của Rosie Nguyễn, chia sẻ những bài học và kinh nghiệm quý giá về cuộc sống và sự nghiệp. Cuốn sách khuyến khích bạn sống hết mình, tận dụng mọi cơ hội và không ngừng học hỏi để phát triển bản thân.', 'img/books/book18.jpg'),
('Tôi tài giỏi, Bạn cũng thế!', 'Adam Khoo', 'Phát triển bản thân', 2006, 'Tôi Tài Giỏi, Bạn Cũng Thế! là cuốn sách của Adam Khoo, giúp bạn khám phá và phát huy tối đa tiềm năng của bản thân. Khoo chia sẻ những chiến lược và kỹ năng để bạn đạt được thành công và hạnh phúc trong cuộc sống.', 'img/books/book19.jpg'),
('Sức Mạnh Của Sự Toàn Tâm Toàn Ý', 'Cal Newport', 'Phát triển bản thân', 2016, 'Sức Mạnh Của Sự Toàn Tâm Toàn Ý là cuốn sách của Cal Newport, giúp bạn hiểu rõ hơn về sức mạnh của sự tập trung và cách đạt được hiệu suất cao trong công việc và cuộc sống. Newport chia sẻ những nguyên tắc và phương pháp giúp bạn làm việc hiệu quả và đạt được mục tiêu của mình.', 'img/books/book20.jpg');

USE review_book;
INSERT INTO books (title, author, genre, year, description, image) VALUES
('Tắt Đèn', 'Ngô Tất Tố', 'Văn học nghệ thuật', 1939, 'Tắt Đèn là một tác phẩm nổi tiếng của nhà văn Ngô Tất Tố, phản ánh hiện thực xã hội Việt Nam trước Cách mạng tháng Tám. Tác phẩm kể về cuộc đời của chị Dậu, một người phụ nữ nông dân phải đấu tranh với những bất công của chế độ phong kiến và thực dân. Chị Dậu phải bán con, bán chó và thậm chí phải bỏ trốn để tránh sự đàn áp tàn bạo. Thông qua nhân vật chị Dậu, tác giả đã khắc họa sâu sắc nỗi khổ cực và sự đấu tranh của người nông dân Việt Nam.', 'img/books/book21.jpg'),
('Truyện Kiều', 'Nguyễn Du', 'Văn học nghệ thuật', 1820, 'Truyện Kiều là kiệt tác của Nguyễn Du, một trong những tác phẩm văn học nổi tiếng nhất của Việt Nam. Tác phẩm kể về cuộc đời lưu lạc của Thúy Kiều, một cô gái tài sắc vẹn toàn nhưng phải trải qua nhiều biến cố, bán mình chuộc cha, trải qua nhiều khổ đau và tủi nhục. Với ngôn ngữ tinh tế, lời thơ sâu sắc và cảm động, Truyện Kiều không chỉ phản ánh hiện thực xã hội phong kiến mà còn thể hiện những giá trị nhân văn cao đẹp.', 'img/books/book22.jpg'),
('Số Đỏ', 'Vũ Trọng Phụng', 'Văn học nghệ thuật', 1936, 'Số Đỏ của Vũ Trọng Phụng là một tiểu thuyết trào phúng nổi tiếng, phê phán những thói hư tật xấu và sự giả dối trong xã hội thành thị Việt Nam thời thuộc địa. Nhân vật chính là Xuân Tóc Đỏ, một kẻ vô học nhưng nhờ sự khéo léo và lừa lọc đã trở thành người nổi tiếng và thành đạt. Qua cuộc đời của Xuân Tóc Đỏ, tác phẩm phơi bày sự suy đồi đạo đức và những mâu thuẫn xã hội thời bấy giờ.', 'img/books/book23.jpg'),
('Những Ngày Thơ Ấu', 'Nguyên Hồng', 'Văn học nghệ thuật', 1940, 'Những Ngày Thơ Ấu là tác phẩm tự truyện của Nguyên Hồng, kể về tuổi thơ đầy khó khăn và đau khổ của tác giả. Bị bỏ rơi bởi cha mẹ, Nguyên Hồng đã trải qua những ngày tháng đói khát và cô đơn, nhưng cũng tràn đầy tình yêu thương của người bà và những người thân yêu. Tác phẩm không chỉ là câu chuyện cá nhân mà còn phản ánh cuộc sống của tầng lớp lao động nghèo trong xã hội Việt Nam trước Cách mạng.', 'img/books/book24.jpg'),
('Vang Bóng Một Thời', 'Nguyễn Tuân', 'Văn học nghệ thuật', 1940, 'Vang Bóng Một Thời của Nguyễn Tuân là tập truyện ngắn ca ngợi vẻ đẹp của văn hóa truyền thống và tinh hoa nghệ thuật Việt Nam. Mỗi câu chuyện trong tập truyện đều mang đậm chất thơ và sự tinh tế, từ những phong tục cổ truyền đến những bậc thầy nghệ thuật tài hoa. Tác phẩm không chỉ là lời ca ngợi quá khứ mà còn là lời nhắc nhở về việc giữ gìn và phát huy những giá trị văn hóa truyền thống.', 'img/books/book25.jpg'),
('Vợ Nhặt', 'Kim Lân', 'Văn học nghệ thuật', 1962, 'Vợ Nhặt của Kim Lân là một truyện ngắn xuất sắc, kể về cuộc sống của người dân nghèo trong nạn đói năm 1945. Nhân vật chính, Tràng, là một người đàn ông nghèo khó nhưng tốt bụng, đã nhặt được một người vợ trong hoàn cảnh éo le. Tác phẩm thể hiện tinh thần nhân đạo sâu sắc, lòng nhân ái và niềm tin vào con người, dù trong hoàn cảnh khó khăn nhất.', 'img/books/book26.jpg'),
('Chí Phèo', 'Nam Cao', 'Văn học nghệ thuật', 1941, 'Chí Phèo là tác phẩm nổi tiếng nhất của Nam Cao, kể về cuộc đời bi thảm của Chí Phèo - một nông dân lương thiện bị biến thành kẻ lưu manh do sự áp bức và bất công của xã hội phong kiến. Chí Phèo sau khi bị vào tù đã trở thành một kẻ say xỉn và chuyên đi đòi nợ thuê. Tuy nhiên, trong sâu thẳm tâm hồn, Chí vẫn khao khát được sống lương thiện và có một cuộc sống bình dị. Tác phẩm là lời tố cáo mạnh mẽ chế độ thực dân phong kiến và cũng là tiếng kêu cứu cho những số phận bị chà đạp.', 'img/books/book27.jpg'),
('Làm Đĩ', 'Vũ Trọng Phụng', 'Văn học nghệ thuật', 1936, 'Làm Đĩ của Vũ Trọng Phụng là một tiểu thuyết gây tranh cãi, kể về cuộc đời bi thảm của một người phụ nữ bị xã hội đẩy vào con đường mại dâm. Tác phẩm là lời phê phán gay gắt các tệ nạn xã hội và sự mục nát của chế độ thuộc địa. Qua cuộc đời của nhân vật chính, tác giả đã tố cáo sự bất công và những áp lực vô hình mà xã hội đặt lên vai những người phụ nữ yếu đuối.', 'img/books/book28.jpg'),
('Đời Thừa', 'Nam Cao', 'Văn học nghệ thuật', 1943, 'Đời Thừa của Nam Cao là một truyện ngắn phản ánh cuộc sống bế tắc của một nhà văn nghèo, Hộ, người luôn phải đối mặt với những khó khăn tài chính và mâu thuẫn trong cuộc sống gia đình. Hộ luôn mơ ước viết nên những tác phẩm lớn, nhưng những lo toan cuộc sống thường ngày đã ngăn cản anh thực hiện điều đó. Tác phẩm không chỉ là câu chuyện cá nhân mà còn là bức tranh chân thực về cuộc sống và nỗi đau của những người trí thức nghèo trong xã hội cũ.', 'img/books/book29.jpg'),
('Cánh Đồng Bất Tận', 'Nguyễn Ngọc Tư', 'Văn học nghệ thuật', 2005, 'Cánh Đồng Bất Tận của Nguyễn Ngọc Tư là một tập truyện ngắn phản ánh cuộc sống chân thực của người dân Nam Bộ. Tác phẩm kể về những số phận con người sống trên những cánh đồng mênh mông, với những niềm vui, nỗi buồn, và những khó khăn trong cuộc sống. Lối viết giản dị nhưng sâu sắc và đầy cảm xúc của Nguyễn Ngọc Tư đã chạm đến trái tim của nhiều độc giả, mang lại cho họ những suy ngẫm về cuộc sống và con người.', 'img/books/book30.jpg');

CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    book_id INT,
    comment TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (username) REFERENCES users(username),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

Use review_book;
ALTER TABLE comments
ADD CONSTRAINT fk_user_comments
FOREIGN KEY (username)
REFERENCES users(username)
ON DELETE CASCADE;


