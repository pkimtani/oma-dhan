#### Future<ToDo>
- [ ] Switch to `JSONCode` macro when they are stable and remove `JSONSerializer` dependency.
- [x] Setup `bloc observer`for dealing with exceptions and errors, and logging.
- [ ] Fix the `DateTime` default values in models
- [ ] Add `drift` database support for web
- [x] Disable `x86` architecture for android builds
- [ ] `PRAGMA foreign_keys = ON` on post migration callback
- [ ] Performance improvements:
  - [ ] Use `BlocSelector` to avoid unnecessary rebuilds
  - [ ] Add `bloc_concurrency` for event transformation