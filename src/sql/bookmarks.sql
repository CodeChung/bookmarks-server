drop table if exists bookmarks;

create table bookmarks (
    id text,
    title text,
    url text,
    description text,
    rating INTEGER
);

insert into bookmarks (id, title, url, description, rating)
values
    ('9273f7da-685a-43cb-8c33-d71e4ad08893', 'Thinkful', 'https://www.thinkful.com', 'Think outside the classroom', 5 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad08891', 'Thinkful1', 'https://www.thinkful1.com', 'Think outside the classroom1', 1 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad08892', 'Thinkful2', 'https://www.thinkful2.com', 'Think outs1ide the classroom', 2 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad088934', 'Thinkful3', 'https://www.thinkful3.com', 'Think out1side the classroom', 3 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad0889342', 'Thinkful4', 'https://www.thinkful4.com', 'Think outside1 the classroom', 4 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad088931', 'Thinkful5', 'https://www.thinkful5.com', 'Think 1outside the classroom', 5 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad088933', 'Thinkful6', 'https://www.thinkful6.com', 'Think outsid1e the classroom', 1 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad088937', 'Thinkful7', 'https://www.thinkful7.com', 'Think ou1tside the classroom', 2 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad0889333', 'Thinkful8', 'https://www.thinkful8.com', 'Thin1k outside the classroom', 3 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad0889366', 'Thinkful9', 'https://www.thinkful9.com', 'Think o1utside the classroom', 4 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad0889321231', 'Thinkful10', 'https://www.thinkful10.com', 'Think outside1 the classroom', 5 ),
    ('9273f7da-685a-43cb-8c33-d71e4ad08893123', 'Thinkful11', 'https://www.thinkful11.com', 'Think outside th1e classroom', 5 );