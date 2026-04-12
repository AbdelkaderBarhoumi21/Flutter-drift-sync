# Why Set Isolate to `null` After Killing It

`Isolate.kill()` stops the isolate, but does **NOT** clear the variable — it still holds a reference to a dead isolate object.

## Without `= null`

```
1. startPeriodicCheck()  → spawns isolate A, _isolate = A
2. stopPeriodicCheck()   → kills A, but _isolate still = A (dead)
3. startPeriodicCheck()  → calls stopPeriodicCheck() again
   → _isolate?.kill()   → tries to kill an already dead isolate ← problem
```

## With `= null`

```
1. startPeriodicCheck()  → spawns isolate A, _isolate = A
2. stopPeriodicCheck()   → kills A, _isolate = null ✓
3. startPeriodicCheck()  → calls stopPeriodicCheck() again
   → _isolate?.kill()   → _isolate is null, skip ← safe
```

## In Short

Setting to `null` after `kill()` ensures the rest of the code knows **there is no active isolate**. The `?.` operator then safely skips the call instead of acting on a dead object.
