# Django的配置

1. 使用django的工具创建好项目与应用,本次创建的项目名为website

2. 本次创建的应用名为Blog

3. 在Blog中创建一个urls.py

``` python

#添加如下内容

from django.urls import path

```

4. 在website的urls中添加Blog里创建的urls.py

``` python

from django.urls import include

urlpatterns = [
    path('Blog/',include("Blog.urls")),
]

```

5. 测试

在Blog的views.py中添加：

``` python

from django.http import HttpResponse

def helloDjango(request):
    return HttpResponse("helloDjango!")

```

然后在Blog的urls.py中添加：

``` python

from . import views

urlpatterns = [
    path('helloDjango.html',views.helloDjango,name='helloDjango')
]

```

以上为基本配置。

6. 在website的settings.py中的ALLOWED_HOSTS添加127.0.0.1

7. 运行python manage.py runserver，然后在浏览器中输入127.0.0.1:8000/Blog/helloDjango.html，应该能看到helloDjango。

下面来设置数据库：

数据库选型：mysql

* Django中mysql的配置

``` python

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': "myBlog",
        'USER':'root',
        'PASSWORD':'123456',
        'HOST':'192.168.11.166',
        'PORT':'3306'
    }

```

# 后台设计

数据库:mysql

缓存:redis

框架:Django、Django-restful-framwork

## 用户模块

### 用户表



### 用户免密登录