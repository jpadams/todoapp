//   __| | __ _  __ _  __ _  ___ _ __
//  / _` |/ _` |/ _` |/ _` |/ _ \ '__|
// | (_| | (_| | (_| | (_| |  __/ |
//  \__,_|\__,_|\__, |\__, |\___|_|
//              |___/ |___/
package todoapp

import (
	"dagger.io/dagger"
)

client: env: dagger_netlify_token: dagger.#Secret

actions: deploy: {
	token:  client.env.dagger_netlify_token
	site:   "jeremyprodsite"
	team:   "jpadams"
	create: true
}
