<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mag');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');
define ('WPLANG', 'ar_AR');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'am3mrw?s}n&-m*!kW&6`C;q:1EF0i]}AT;NKVS2D!,Q![eNt~Yu`@]-%!6ol>;10');
define('SECURE_AUTH_KEY',  'dNs:@^h;rLYq)d0)ljZCR?o%}Z|Zt-1+=BbJRBG30hK#9(!=mnU.m7%WfBu}2dS~');
define('LOGGED_IN_KEY',    '}!hT/>eeHOMJK ax]g<G/8lV?rlY?+FbDBG 8jx?lFF;?sHax4o#6-rfG(Gt~Lib');
define('NONCE_KEY',        'o-Dlv* rB|{pbhFf5ii~QRP<LfR_#2zDq3h0rqZNw.<D$3GlfRGW1yGG:76)62!g');
define('AUTH_SALT',        '7;|:M|HH*PNkg8V.+x1&[;MW`4u6cQ!I*qWiy{ ^^FlEzzwARdVg9YIoe:e)yzRD');
define('SECURE_AUTH_SALT', '<wyd8RbNUh:q@V-MvJa__K_c9:1ISf p,R@{Bh`.9/XRHUQ)]:2L82O+tE5S-q8}');
define('LOGGED_IN_SALT',   '3OH.e,eKJ?]JCauY/@?P]Z^Pws!mf6~1R8HkbHO*AbD<#]&rp#r)Ydr!v:3IPT@p');
define('NONCE_SALT',       'O3*#-X^Q1a<% rzXq9G&ixc5l<^w_LgT4D$vK2m>0*Ew}Dyh?E5Ph?7 pItdX]9R');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

