_fzf_compgen_path() {
  rg --files --no-ignore --hidden --follow --glob "!.git/*"
}
