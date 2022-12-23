<script setup lang="ts">
import { onMounted } from "vue"
import TheWelcome from "../components/TheWelcome.vue";
// import * as G2Plot from "/deps/g2plot/g2plot.min.js";
import "/deps/g2plot/g2plot.min.js";
let chartInstance : (Line|undefined) = void 0;
onMounted(() => {
  console.log("G2Plot",G2Plot)
  chartInstance  = new G2Plot.Line('chart', {
      autoFit: true,
      meta: {
        _type: {
          alias: '类型'
        },
        x: {
          alias: '距离'
        },
        y: {
          alias: '深度'
        }
      },
      xField: 'x',
      yField: 'y',
      seriesField: '_type',
    } as any);
})
</script>

<template>
  <main>
    <TheWelcome />
    <div id="chart"></div>
  </main>
</template>
