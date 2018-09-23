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
define('DB_NAME', 'wp_webgraph');

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

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'K[@oPczXY_@u-N>x7^MZC=zmgx:$EIN}1j{:cw?TFpHmH)^r,#EH(,Hi^aQ@~P=P');
define('SECURE_AUTH_KEY',  'J~^>CitIc?my:WOma4(6l@Yr@^{M.6R{JdZa.UE8j-$(}uuE1/nA,)YQjXECO?e[');
define('LOGGED_IN_KEY',    'NZD#]Jq#WWiY_NMvQu5)J_]P75-gIG#K.hu`[L5,1W~:FaG3kLJq[WV+Y/vIuN) ');
define('NONCE_KEY',        ':$rX[<ds@6?qb47B@91[qgc(;hxUrog+![N17? aWgiI:Pk9_ mQGw(N989B=W^ ');
define('AUTH_SALT',        'v=j/?O,531UQt=N_!;=K|VkE`z^tT-Q*7Yw)!TI3s=]t#T72*HF1cKtC4+(PWO75');
define('SECURE_AUTH_SALT', 'l};yl{Cz#BrPwU=y#k21/ucGM/YNR>(c DG%d|`:[84f GAJ0!pcOHu=kHIev}E^');
define('LOGGED_IN_SALT',   'w!O9lTvi!Q7o$]N]U$CKbVo-qr6Ng3(1L:4U9u8%8*AndnI34SMGkFl}`y)-D&}s');
define('NONCE_SALT',       ';D{t@Hb`&Lj_/D4Mg^XuU@83?I (8%6U  ^sMjTH8fu:v6lR{k*6fo`q8o_?w!a[');

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
