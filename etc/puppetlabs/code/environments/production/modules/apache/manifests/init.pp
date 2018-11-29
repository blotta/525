class apache {
    
    case $::osfamily {
        "RedHat": {
            $web = "httpd"
        }
        "Debian":{
            $web = "apache2"
        }
    }

    package { $web:
        ensure => present
    }

    service { $web:
        ensure => running
    }

    file { "/var/www/html/index.html":
        source => "puppet:///modules/apache/index.html",
        ensure => present
    }
}
