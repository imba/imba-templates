## Development

Just go to this directory and run `npx imba serve index.html`.

## Building

Run `npx imba build index.html` to build the html entrypoint together with all the dependencies.

By default, the built files will reside in `dist`. Public files (like the html and assets) can be found in `dist/public`, while some generated server-side files - including a tiny webserver is located directly in `dist`.

You should now be able to host the contents inside `dist/public` on any static host / server.
