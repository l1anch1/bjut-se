declare module '*.vue' {
  import Vue from 'vue'
  export default Vue
}

declare module '*.js' {
  const content: any
  export default content
}