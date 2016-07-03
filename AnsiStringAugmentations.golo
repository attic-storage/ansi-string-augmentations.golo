module AnsiStringAugmentations

pimp java.lang.String {
  function prepend = |this, prepend| -> prepend + this
  function append = |this, append| -> this + append
  function ansify = |this, ansiColor| -> this: prepend(ansiColor): append("\u001B[0m")
  function inBlack = |this| -> this: ansify("\u001B[30m")
  function inRed = |this| -> this: ansify("\u001B[31m")
  function inGreen = |this| -> this: ansify("\u001B[32m")
  function inYellow = |this| -> this: ansify("\u001B[33m")
  function inBlue = |this| -> this: ansify("\u001B[34m")
  function inPurple = |this| -> this: ansify("\u001B[35m")
  function inCyan = |this| -> this: ansify("\u001B[36m")
  function inWhite = |this| -> this: ansify("\u001B[37m")
}
