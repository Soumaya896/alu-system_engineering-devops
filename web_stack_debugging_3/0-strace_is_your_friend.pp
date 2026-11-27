# Fixes the typo (phpp instead of php) in wp-settings.php that makes Apache return a 500 error
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/bin:/usr/bin',
  onlyif  => 'grep -q phpp /var/www/html/wp-settings.php',
}
