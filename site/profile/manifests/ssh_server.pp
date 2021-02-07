class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCi4hmlaJ255mmKnvd1M3//GFUqnohVF6uGuvjKxCFQZIFJvYCPROOuMrDfnGsPqfrJYPpZxq6YoW3iQMHRqUhKUoUaZ//1O9OaKu+p2x66GlTnsrgkqdTCnjpY9Sq5M7KnnLEHMcuWcT4YjBbbm+1Zxop/yH3fY79eSBMO7b48R3BeOvGwUWdsmatJCNro4vX3c7iBkbvd9Ege61+zx1kDSrYKuq7vtuKa/WS5fXDqfNTe+bNX1IuVRlK21cn4BGpctZ2yIHHVI5I5yDvaBo+T7Ey2YS8z+zXF1Yd0xfroKNhFyNQntRvOdicpNjX9cV6kpuj3xWGcmxlGkw1T8idh',
	}  
}
