# Chimera
CGI with Ruby and JSON. 

## Architecture
The main idea is to expose any kind of code inside the `registry` folder to the web. The request object (parameters, etc.) is serialized to JSON and passed as environment variable to non-ruby binaries/scripts. 

There is no kind of sandboxing implemented (and probably never will be).

Never run this as `root` user in production!

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
Please see the [requirements.txt](requirements.txt) for dependencies.

### Installing
Clone the repository:
```
git clone https://github.com/doomguy/chimera
```

Run Chimera:
```
ruby chimera.rb
```

Interact with the services:
```
curl localhost:4567/helloRuby
Hello, World!
This is Ruby!

curl localhost:4567/helloRuby?name=FooBar
Hello, FooBar!
This is Ruby!

curl localhost:4567/helloPythono
Hello, World!
This is Python!

curl localhost:4567/helloPython?name=FooBar
Hello, FooBar!
This is Python!
```

Please note: Some other examples for other languages need some more work to run. See the README.md in the respective example folder.

### Usage
For new scripts follow these simple steps:
1. Create a new folder under `registry` (CamelCase recommended).
2.1 For native ruby code, just have a look at the `helloRuby` example.
2.2 For non-ruby code, copy the helper.rb into the folder and rename it to the folder name. By default GET and POST is supported.
3. Put your binary/script with the name `main` into the folder. Make it executable (`chmod +x main`)!
4. (Re)Start Chimera

## Built With
* [Sinatra](http://sinatrarb.com/) - The framework used

## Contributing
Just send in your pull request if you feel like it.

## Versioning
We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/doomguy/chimera/tags).

## Authors
* **doomguy** - *Initial work* - [doomguy](https://github.com/doomguy)

See also the list of [contributors](https://github.com/doomguy/chimera/contributors) who participated in this project.

## License
This project is licensed under the Unlicense - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments
* Hat tip to anyone whose code was used!
* Inspired by [OpenLambda](https://github.com/open-lambda/open-lambda)
