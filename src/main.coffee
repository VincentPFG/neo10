import DefaultLayout from '~/layouts/Default.vue'

export default (Vue, {head}) ->

	Vue.component 'Layout', DefaultLayout

	Vue::$commerce = new (await import('@chec/commerce.js')).default 'pk_test_179060ff9b43cb9b3c1f7f17a162b3c52445f0f120b9c'

	head.link.push
		href: 'https://cdn.snipcart.com/themes/v3.0.11/default/snipcart.css'
		rel: 'stylesheet'
	head.script.push
		src: 'https://cdn.snipcart.com/themes/v3.0.11/default/snipcart.js'
		body: yes