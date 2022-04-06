package todoapp

import (
	"dagger.io/dagger"
)

client: filesystem: "~/dagger_netlify_token": read: contents: dagger.#Secret

actions: deploy: {
	token:  client.filesystem."~/dagger_netlify_token".read.contents
	site:   "f11sjdhfkasjdlksdjflkasjdlfkjsadlkfjslkajfls"
	team:   "jpadams"
	create: true
}
