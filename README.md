# todo-or-die

TODOs you cannot forget!

todo-or-die provides template haskell macros that act as checked reminders.

This project is a port of the rust carate with the same name: https://docs.rs/todo-or-die/latest/todo_or_die/

```haskell
-- trigger a compile error if we're past a certain date
$(todoOrDieAfterDate 3000 1 1) -- its the year 3000!
```

### Roadmap
- [x] todo or die after date
- [ ] todo or die when github issue or pr is closed
- [ ] todo or die when hackage package reaches a certain version
- [ ] todo or die when haskell reaches a certain version
- [ ] TODO_OR_DIE_SKIP: skip all todos if set
- [ ] Offline compilation
- [ ] TODO_OR_DIE_HTTP_CACHE_TTL_SECONDS: How long cached responses will be used.
- [ ] TODO_OR_DIE_DISABLE_HTTP_CACHE: Disables caching if its set.
- [ ] TODO_OR_DIE_CLEAR_HTTP_CACHE: Clears the cache if its set.
