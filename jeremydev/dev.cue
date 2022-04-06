//   __| | __ _  __ _  __ _  ___ _ __
//  / _` |/ _` |/ _` |/ _` |/ _ \ '__|
// | (_| | (_| | (_| | (_| |  __/ |
//  \__,_|\__,_|\__, |\__, |\___|_|
//
package todoapp

import (
	"dagger.io/dagger"
)

client: filesystem: "~/dagger_netlify_token": read: contents: dagger.#Secret

actions: deploy: {
	token:  client.filesystem."~/dagger_netlify_token".read.contents
	site:   "jeremydevsite"
	team:   "jpadams"
	create: true
}
