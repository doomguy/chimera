package main

import ( 
  "os"
  "fmt"
  "encoding/json"
)


func main() {
  var request = os.Getenv("REQUEST")
  var result map[string]interface{}
  json.Unmarshal([]byte(request), &result)

  params := result["params"].(map[string]interface{})

  var name = "World"
  for key, value := range params {
    if key == "name" {
      name = fmt.Sprint(value)
    }
  }

  fmt.Printf("Hello, %v!\nThis is Go!", name)
}
