# Github Local Docker Action template

This is intended to be a template for creating a local docker action repo for testing things based on a docker image.

## Create Your Own Action

To create your own action, you can use this repository as a template! Just
follow the below instructions:

1. Click the **Use this template** button at the top of the repository
1. Select **Create a new repository**
1. Select an owner and name for your new repository
1. Click **Create repository**
1. Clone your new repository

## Usage

All you need to focus on is the `Dockerfile` and the `entrypoint.sh` script.

### Test with Github Actions

The template includes a workflow that will run the action on every push/pull request.

### Test Locally

If you want to test the action locally, follow the below instructions:

After you've cloned the repository to your local machine or codespace, you'll
need to perform some initial setup steps before you can locally test your action.

> [!NOTE]
>
> You'll need to have a reasonably modern version of
> [Docker](https://www.docker.com/get-started/) handy (e.g. docker engine
> version 20 or later).

1. :hammer_and_wrench: Build the container

   Make sure to replace `local/docker-action` with an appropriate
   label for your container.

   ```bash
   docker build -t local/docker-action .
   ```

2. :white_check_mark: Test the container

   ```bash
   docker run --rm local/docker-action
   ```
