<template lang='pug'>
Layout

</template>

<script lang='coffee'>
export default
    mounted: ->
        {products} = @$commerce
        console.log (await products.list()).data
</script>