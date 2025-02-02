-- Use the default LuaJIT globals.
std = 'luajit'
-- This fork also introduces a new global for misc API namespace.
read_globals = { 'misc' }

-- The `_TARANTOOL` global is often used for skip condition
-- checks in tests.
files['test/tarantool-tests/'] = {
  read_globals = {'_TARANTOOL'},
}

-- These files are inherited from the vanilla LuaJIT or different
-- test suites and need to be coherent with the upstream.
exclude_files = {
  'dynasm/',
  'src/',
  'test/LuaJIT-tests/',
  'test/PUC-Rio-Lua-5.1-tests/',
  'test/lua-Harness-tests/',
}
