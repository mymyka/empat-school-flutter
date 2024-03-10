// Використання замикань
// Використання параметрів за замовчуванням

var createCounter = ([int initialValue = 1]) => () => initialValue++;
