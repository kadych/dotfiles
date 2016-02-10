let g:airline#themes#turquoise#palette = {}

function! airline#themes#turquoise#refresh()
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Colors
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Base colors
  let s:base03  = {'t': 234, 'g': '#002b36'}
  let s:base02  = {'t': 235, 'g': '#073642'}
  let s:base01  = {'t': 240, 'g': '#586e75'}
  let s:base00  = {'t': 241, 'g': '#657b83'}
  let s:base0   = {'t': 244, 'g': '#839496'}
  let s:base1   = {'t': 245, 'g': '#93a1a1'}
  let s:base2   = {'t': 254, 'g': '#e4f1f1'}
  let s:base22  = {'t': 254, 'g': '#d8e9e9'}
  let s:base3   = {'t': 230, 'g': '#fdf6e3'}
  let s:yellow  = {'t': 136, 'g': '#b58900'}
  let s:orange  = {'t': 166, 'g': '#cb4b16'}
  let s:red     = {'t': 160, 'g': '#dc322f'}
  let s:magenta = {'t': 125, 'g': '#d33682'}
  let s:violet  = {'t': 61 , 'g': '#6c71c4'}
  let s:blue    = {'t': 33 , 'g': '#268bd2'}
  let s:cyan    = {'t': 37 , 'g': '#2aa198'}
  let s:green   = {'t': 64 , 'g': '#859900'}

  """"""""""""""""""""""""""""""""""""""""""""""""
  " Simple mappings
  " NOTE: These are easily tweakable mappings. The actual mappings get
  " the specific gui and terminal colors from the base color dicts.
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Normal mode
  let s:N1 = [s:base2, s:base00, 'bold']
  let s:N2 = [s:base2, s:base1, '']
  let s:N3 = [s:base00, s:base22, '']

  let s:NF = [s:orange, s:N3[1], '']
  let s:NW = [s:base3, s:orange, '']

  let s:NM = [s:base01, s:N3[1], '']
  let s:NMi = [s:base02, s:N3[1], '']

  " Insert mode
  let s:I1 = [s:N1[0], s:yellow, 'bold']
  let s:I2 = s:N2
  let s:I3 = s:N3
  let s:IF = s:NF
  let s:IM = s:NM

  " Visual mode
  let s:V1 = [s:N1[0], s:magenta, 'bold']
  let s:V2 = s:N2
  let s:V3 = s:N3
  let s:VF = s:NF
  let s:VM = s:NM

  " Replace mode
  let s:R1 = [s:N1[0], s:red, '']
  let s:R2 = s:N2
  let s:R3 = s:N3
  let s:RM = s:NM
  let s:RF = s:NF

  " Inactive, according to VertSplit in turquoise
  let s:IA = [s:base2, s:base1, '']

  """"""""""""""""""""""""""""""""""""""""""""""""
  " Actual mappings
  " WARNING: Don't modify this section unless necessary.
  """"""""""""""""""""""""""""""""""""""""""""""""
  let s:NFa = [s:NF[0].g, s:NF[1].g, s:NF[0].t, s:NF[1].t, s:NF[2]]
  let s:IFa = [s:IF[0].g, s:IF[1].g, s:IF[0].t, s:IF[1].t, s:IF[2]]
  let s:VFa = [s:VF[0].g, s:VF[1].g, s:VF[0].t, s:VF[1].t, s:VF[2]]
  let s:RFa = [s:RF[0].g, s:RF[1].g, s:RF[0].t, s:RF[1].t, s:RF[2]]

  let g:airline#themes#turquoise#palette.accents = {
        \ 'red': s:NFa,
        \ }

  let g:airline#themes#turquoise#palette.inactive = airline#themes#generate_color_map(
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]],
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]],
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]])
  let g:airline#themes#turquoise#palette.inactive_modified = {
        \ 'airline_c': [s:NMi[0].g, '', s:NMi[0].t, '', s:NMi[2]]}

  let g:airline#themes#turquoise#palette.normal = airline#themes#generate_color_map(
        \ [s:N1[0].g, s:N1[1].g, s:N1[0].t, s:N1[1].t, s:N1[2]],
        \ [s:N2[0].g, s:N2[1].g, s:N2[0].t, s:N2[1].t, s:N2[2]],
        \ [s:N3[0].g, s:N3[1].g, s:N3[0].t, s:N3[1].t, s:N3[2]])

  let g:airline#themes#turquoise#palette.normal.airline_warning = [
        \ s:NW[0].g, s:NW[1].g, s:NW[0].t, s:NW[1].t, s:NW[2]]

  let g:airline#themes#turquoise#palette.normal_modified = {
        \ 'airline_c': [s:NM[0].g, s:NM[1].g,
        \ s:NM[0].t, s:NM[1].t, s:NM[2]]}

  let g:airline#themes#turquoise#palette.normal_modified.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.insert = airline#themes#generate_color_map(
        \ [s:I1[0].g, s:I1[1].g, s:I1[0].t, s:I1[1].t, s:I1[2]],
        \ [s:I2[0].g, s:I2[1].g, s:I2[0].t, s:I2[1].t, s:I2[2]],
        \ [s:I3[0].g, s:I3[1].g, s:I3[0].t, s:I3[1].t, s:I3[2]])

  let g:airline#themes#turquoise#palette.insert.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.insert_modified = {
        \ 'airline_c': [s:IM[0].g, s:IM[1].g,
        \ s:IM[0].t, s:IM[1].t, s:IM[2]]}

  let g:airline#themes#turquoise#palette.insert_modified.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.visual = airline#themes#generate_color_map(
        \ [s:V1[0].g, s:V1[1].g, s:V1[0].t, s:V1[1].t, s:V1[2]],
        \ [s:V2[0].g, s:V2[1].g, s:V2[0].t, s:V2[1].t, s:V2[2]],
        \ [s:V3[0].g, s:V3[1].g, s:V3[0].t, s:V3[1].t, s:V3[2]])

  let g:airline#themes#turquoise#palette.visual.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.visual_modified = {
        \ 'airline_c': [s:VM[0].g, s:VM[1].g,
        \ s:VM[0].t, s:VM[1].t, s:VM[2]]}

  let g:airline#themes#turquoise#palette.visual_modified.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.replace = airline#themes#generate_color_map(
        \ [s:R1[0].g, s:R1[1].g, s:R1[0].t, s:R1[1].t, s:R1[2]],
        \ [s:R2[0].g, s:R2[1].g, s:R2[0].t, s:R2[1].t, s:R2[2]],
        \ [s:R3[0].g, s:R3[1].g, s:R3[0].t, s:R3[1].t, s:R3[2]])

  let g:airline#themes#turquoise#palette.replace.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.replace_modified = {
        \ 'airline_c': [s:RM[0].g, s:RM[1].g,
        \ s:RM[0].t, s:RM[1].t, s:RM[2]]}

  let g:airline#themes#turquoise#palette.replace_modified.airline_warning =
        \ g:airline#themes#turquoise#palette.normal.airline_warning

  let g:airline#themes#turquoise#palette.tabline = {}

  let g:airline#themes#turquoise#palette.tabline.airline_tab = [
        \ s:I2[0].g, s:I2[1].g, s:I2[0].t, s:I2[1].t, s:I2[2]]

  let g:airline#themes#turquoise#palette.tabline.airline_tabtype = [
        \ s:N2[0].g, s:N2[1].g, s:N2[0].t, s:N2[1].t, s:N2[2]]
endfunction

call airline#themes#turquoise#refresh()

