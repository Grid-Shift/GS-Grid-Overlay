# Scripts for controls driven through the pop-up menu should be here.

window.initializeListeners = ->
  document.getElementById("gs-grid-checkbox").addEventListener("click", ->
    settingsController.gridToggle()
    window.console.log("check box pressed")
  )

  return true

window.settingsController = {
  gridCheckbox: document.getElementById("gs-grid-checkbox"),
  baselineField: document.getElementById("gs-baseline-grid-size"),
  gridToggle: ->
    if @gridCheckbox.checked
      window.showGrid()
    else
      window.hideGrid()
}


window.showGrid = ->
  chrome.tabs.executeScript(null, {
      code: "window.gsCreateGrid()"
    })

window.hideGrid = ->
  chrome.tabs.executeScript(null, {
      code: "window.gsDeleteGrid()"
    })

document.addEventListener('DOMContentLoaded', initializeListeners)