<?php
@define('READ_MORE', 'Read More');
@define('DATE_CHOCOLATE_THEME', '%B %e. %Y');

$template_config = array(
    array(
        'var'           => 'about',
        'title'         => 'abouttext',
        'description'   => 'About me text, maximum 60 characters',
        'type'          => 'string',
        'default'       => 'Hi, Welcome to my site, please bookmark me, and feel free to comment on my posts',
    ),
    array(
        'var'           => 'aboutpageurl',
        'title'         => 'About page URL',
        'description'   => 'Enter the URL of your about page eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink1text',
        'title'         => 'Navlink #1 Text',
        'description'   => 'Enter the first navigation text',
        'type'          => 'string',
        'default'       => 'Impressum',
    ),
    array(
        'var'           => 'navlink1url',
        'title'         => 'Navlink #1 URL',
        'description'   => 'Enter the first navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink2text',
        'title'         => 'Navlink #2 Text',
        'description'   => 'Enter the second navigation text',
        'type'          => 'string',
        'default'       => 'Contact',
    ),
    array(
        'var'           => 'navlink2url',
        'title'         => 'Navlink #2 URL',
        'description'   => 'Enter the second navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
);
