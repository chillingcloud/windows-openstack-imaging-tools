$password = 'Win#2016'
net user Administrator $password
net user Admin /delete
Remove-Item -Recurse -Force --Path 'C:\Users\Admin'