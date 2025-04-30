```mermaid
---
  config:
    look: handDrawn
---
graph TD
0-->|"a"|1
1-->|"a"|2
2-->|"a"|2
0((0))
1((1))
2["2(0)/[(Dynamic_dfa((0, 2)), Dynamic_dfa((1, 1)))]"]
```
