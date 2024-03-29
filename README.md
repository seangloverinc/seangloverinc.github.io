Use jeykll docker image
https://github.com/BretFisher/jekyll-serve

Serve site locally

```
docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve
```

Update `Gemfile.lock`

```
docker run -v $(pwd):/site -it --entrypoint bash bretfisher/jekyll
..
bundle update
```
