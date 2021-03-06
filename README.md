## Exception based alerting
Just head home, and know that your defined "usual" route home is the fastest... unless you hear from us.

You'll receive an SMS alert if the system detects an "alternate" route meets your defined threshold for time savings.

## v1 - Nov 2019
A console application.

## v2 - Dec 2019
- Flask web application deployed using AWS, nginx, gunicorn.
- Jinja templating.
- JWT (JSON Web Token).
- AWS RDS PostgreSQL instance.
- Amazon's `boto3` library for text messaging.
- 3 Google Maps APIs.
- `APScheduler` library for scheduling jobs.

## v3 - Under Construction, Fall 2020
Rebuilding this project to learn new and more modern technologies as well as to better use the app's existing technologies.

- (more to come...)

### What it does
- Users self-service their registration and commute details.
- Job scheduler regularly checks for upcoming commutes and adds them to the job queue.
- When run, each job takes that users's commute and determines whether an alternative to their pre-defined route exists which meets the user's threshold for time savings. If so, then a text is sent to the user encouraging them to check their favoriate nagivation app to take advantage of that alternative.

### Why I Built This
I know how to get to and from work. So I don't turn on my navigation. It would be extra work.

But every so often my "usual" route has an unexpected accident, or traffic jam. I thought to myself, "I wish I didn't have to run navigation every day just to avoid the rare traffic jam."

And the idea was born. A system that houses my "usual" route home. Each day at my predefined time, it checks the "usual" route's estimated time against the "best available" route, only generating an SMS notification if the time savings surpasses my defined threshold. I don't run a navigation app on my phone... unless I get the message.