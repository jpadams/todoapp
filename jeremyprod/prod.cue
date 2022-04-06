package todoapp

import (
	"dagger.io/dagger"
)

client: env: dagger_netlify_token: dagger.#Secret

actions: deploy: {
	token:  client.env.dagger_netlify_token.read.contents
	site:   "f11sjdhfkasjdlksdjflkasjdlfkjsadlkfjslkajfls"
	team:   "jpadams"
	create: true
}
