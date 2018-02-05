---
title: "Hosting a VPS-based Jekyll Site"
date: 2018-02-04 12:30:00
categories: jekyll vps digitalocean
---

As I was trying to set up this blog, I ran into some issues regarding running Jekyll, a static site builder, and wanted to write a short post helping anyone attempting the same configuration that I was shooting for.

I began with my digital ocean hosted VPS (which, for students using the [github student dev pack](https://education.github.com/pack), offers $60 of hosting credit) with Apache2, as I haven't been exposed to much nginx.

My goal was to get a modifiable jekyll repo on my local machine that I could update posts/blog with. I wanted to work on my local machine, in case I didn't have internet/connection to my server, and then push changes to my VPS and github.

So we need three things:
1. A local git repo
2. A github repo
3. A remote repo on our VPS

We can begin by installing jekyll and it's dependencies on both our remote and local machine:

{% highlight bash %}
$ sudo apt-get install ruby ruby-all-dev jekyll git-core build-essential
{% endhighlight %}

