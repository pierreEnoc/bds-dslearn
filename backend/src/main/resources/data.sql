INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('BOB Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES('Bootcam HTML5', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWeQG3UPd2UNL8PRTP8j-GYk27q09fkQzpnA&usqp=CAU');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2021-07-20T10:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2021-07-20T10:00:00Z', 1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('trilha HTMT', 'Trilha principal do curso', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Live exclusivas para a turma', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'capítulo introducão', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'capítulo inciante', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'capítulo finalizar', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1449493&psig=AOvVaw0BRs180OingpnMyLSJNltD&ust=1607298213142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDV8NOCuO0CFQAAAAAdAAAAABAD', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-14T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula1 de cap1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1,'Material de apoio: abc','https://www.youtube.com/watch?v=W0ywxkvc4_M');


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula2 de cap1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=W0ywxkvc4_M');


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula3 de cap1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=W0ywxkvc4_M');


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula3 de cap1', 4, 1);
INSERT INTO tb_task (id, desciption, question_Count, approval_Count, weight, due_Date) VALUES (4, 'trabalho', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);


INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
