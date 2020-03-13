function onDomReady(fn) {
  if (document.readyState === 'complete' || document.readyState === 'interactive') {
    setTimeout(fn, 1);
  } else {
    document.addEventListener("DOMContentLoaded", fn);
  }
}

onDomReady(function() {
  console.log('Hello world!');
});
