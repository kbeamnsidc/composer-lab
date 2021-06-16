# Mad Scientist Lab Experiments with Composer

Experiments with [composer](https://getcomposer.org/)
to install an npm package from GitHub. This isn't
complete yet. I'm following the article
[How to Install a Node.js Project Within Composer](https://blog.myplanet.com/how-to-install-a-node-js-project-within-composer-df9561a8cdb8)
but haven't grokked or implemented all of it yet.

The current status is that running the make targets
shown below, and using the `composer.json` config
file, we can install a test / fake npm app from GitHub.

More work remains.

## Automagic

Running these make targets should result in two 
directories: `docroot` and `vendor`. The [fake npm
package / single page JS app](https://github.com/kbeamnsidc/webpack-lab)
should then be installed underneath the `docroot`
directory.

NOTE: The two dirs are owned by `root`, but there is
a fix noted in the [`composer` DockerHub README](https://hub.docker.com/_/composer) that
shows how to fix this, I just haven't gotten to it
yet.

I think the next steps are to run the Drupal image
and hand it the local `docroot` directory. Then we
can test adding the JS bundle to a Drupal page / block /
thing and see if & how this works.

### Pull down two Docker images that we'll use:

        $ make setup

### Have composer update the dependency lock file:

        $ make update

### Install the dependencies:

        $ make install

## Explore 

If you'd like to just explore the Docker environment
for composer:

        $ make shell
