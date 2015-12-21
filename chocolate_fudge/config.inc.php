<?php
@define('READ_MORE', 'Read More');
@define('DATE_CHOCOLATE_THEME', '%B %e. %Y');

$template_config = array(
    array(
        'var'           => 'about',
        'name'          => 'abouttext',
        'description'   => 'About me text, maximum 60 characters',
        'type'          => 'string',
        'default'       => 'Hi, Welcome to my site, please bookmark me, and feel free to comment on my posts',
    ),
    array(
        'var'           => 'aboutpageurl',
        'name'          => 'About page URL',
        'description'   => 'Enter the URL of your about page eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink1text',
        'name'          => 'Navlink #1 Text',
        'description'   => 'Enter the first navigation text',
        'type'          => 'string',
        'default'       => 'Impressum',
    ),
    array(
        'var'           => 'navlink1url',
        'name'          => 'Navlink #1 URL',
        'description'   => 'Enter the first navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink2text',
        'name'          => 'Navlink #2 Text',
        'description'   => 'Enter the second navigation text',
        'type'          => 'string',
        'default'       => 'Contact',
    ),
    array(
        'var'           => 'navlink2url',
        'name'          => 'Navlink #2 URL',
        'description'   => 'Enter the second navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
);

$template_config_groups = NULL;
