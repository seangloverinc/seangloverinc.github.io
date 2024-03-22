Use jeykll docker image
https://github.com/BretFisher/jekyll-serve

Serve site locally

```
docker run -v $(pwd):/site -it --entrypoint bash bretfisher/jekyll
```

Update `Gemfile.lock`

```
docker run -v $(pwd):/site -it --entrypoint bash bretfisher/jekyll
..
bundle update
```
