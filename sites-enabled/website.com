server {
	listen 80;
	server_name website.com www.website.com;
	root /var/www/website.com/public;
	index index.php index.html;

	include templates/non-slash.conf;
	include templates/semantic-url.conf;
	include templates/anti-xss-xsrf.conf;
	include templates/favicon.conf;
	include templates/cache-static.conf;
	include templates/non-www.conf;
	include templates/security.conf;
	include templates/protect-system-files.conf;	
	include templates/php.conf;
}