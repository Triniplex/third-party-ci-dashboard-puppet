class django ($user = steven) {
    package {"python-django":
        ensure => "installed",
        }
    package {"sqlite3":
        ensure => "installed",
    }
    exec {"/usr/bin/django-admin startproject www":
        require => Package['python-django'],
        creates => "/home/$user/www/www",
        cwd => "/home/$user",
        user => $user,
    }
}
