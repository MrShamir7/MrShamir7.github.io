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
$ sudo apt-get install ruby ruby-all-dev git-core build-essential
$ sudo gem install jekyll
{% endhighlight %}


Let's say we wanted to use someone's open source jekyll theme. I found mine from [here](https://github.com/jekyll/jekyll/wiki/Themes), as I did not want the basic jekyll layout. Shoutout to [niklasbuschmann](https://github.com/niklasbuschmann/contrast) for making the awesome theme! What we do now is fork the theme on github, then clone the fork.

On our local machine:

{% highlight bash %}
$ git clone https://github.com/sid-devic/contrast
{% endhighlight %}

cd into the cloned directory. Then pop:

{% highlight bash %}
$ jekyll serve
{% endhighlight %}

to check if your jekyll installed correctly. If it did, you should be able to navigate to 127.0.0.1:4000 in your browser and see the theme you just cloned, basic and unmodified.

If you ran into a jekyll dependency error (I did), just install whatever jekyll packages you were missing:

{% highlight bash %}
$ sudo gem install jekyll-packagename
{% endhighlight %}

Now that we have the theme working on our local machine, it's time to create a copy on our remote machine.





We make a new directory, cd into it, then initialize a "bare" git repo. We do this because we want the repo on our remote machine to be in sync with the one on our local machine. Next, 
