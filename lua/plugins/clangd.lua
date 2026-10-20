-- Make clangd use this project's Nix toolchain instead of Arch's /usr headers.
--
-- The build compiles with a Nix gcc whose stdlib + GLFW/glm/libGL live in
-- /nix/store. Without --query-driver, clangd falls back to Arch's clang/gcc
-- headers in /usr/include, which mismatch the actual build (wrong stdlib
-- version, headers only present by luck) and break on a clean machine.
--
-- --query-driver lets clangd execute the Nix gcc to extract its real include
-- paths. It only works when clangd runs inside the dev-shell env (direnv +
-- the project's .envrc), where NIX_CFLAGS_COMPILE points at GLFW/glm.
--
-- Note: --query-driver can only be a command-line flag, never in .clangd
-- (clangd refuses to run arbitrary drivers named by an untrusted repo file).
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--query-driver=/nix/store/*/bin/*gcc,/nix/store/*/bin/*g++,/nix/store/*/bin/cc,/nix/store/*/bin/c++",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=never",
          },
        },
      },
    },
  },
}
