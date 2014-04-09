# Scripts for controls driven through the pop-up menu should be here.



window.initializeListeners = ->
  document.getElementById("gs-grid-checkbox").addEventListener("click", ->
    chrome.tabs.executeScript(null, {
      code: "document.body.style.backgroundColor='red'"
    })
    window.console.log("check box pressed")
  )

  return true




document.addEventListener('DOMContentLoaded', initializeListeners)