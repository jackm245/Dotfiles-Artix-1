local home = os.getenv('HOME')
-- vim.g.dashboard_footer_icon = '🐬 '
-- vim.g.dashboard_preview_command = 'cat'
-- vim.g.dashboard_preview_pipeline = 'lolcat -F 0.3'
-- --vim.g.dashboard_preview_file = home .. '/.config/nvim/static/neovim.cat'
-- vim.g.dashboard_preview_file_height = 12
-- vim.g.dashboard_preview_file_width = 80
vim.g.dashboard_default_executive = 'telescope'

vim.cmd('let g:dashboard_custom_header = ['..
  '\'██╗ ██████╗███████╗██╗   ██╗██╗███╗   ███╗\','..
  '\'██║██╔════╝██╔════╝██║   ██║██║████╗ ████║\','..
  '\'██║██║     █████╗  ██║   ██║██║██╔████╔██║\','..
  '\'██║██║     ██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║\','..
  '\'██║╚██████╗███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║\','..
  '\'╚═╝ ╚═════╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝\''..
  ']')

--vim.cmd('let g:dashboard_custom_header = ['..
  --'\'=================     ===============     ===============   ========  ========\','..
  --'\'\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //\','..
  --'\'||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||\','..
  --'\'|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||\','..
  --'\'||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||\','..
  --'\'|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||\','..
  --'\'||. . ||   ||-׳  || ||  `-||   || . .|| ||. . ||   ||-׳  || ||  `|\\_ . .|. .||\','..
  --'\'|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||\','..
  --'\'||_-׳ ||  .|/    || ||    \\|.  || `-_|| ||_-׳ ||  .|/    || ||   | \\  / |-_.||\','..
  --'\'||    ||_-׳      || ||      `-_||    || ||    ||_-׳      || ||   | \\  / |  `||\','..
  --'\'||    `׳         || ||         `׳    || ||    `׳         || ||   | \\  / |   ||\','..
  --'\'||            .===׳ `===.         .===׳.`===.         .===׳ /==. |  \\/  |   ||\','..
  --'\'||         .==׳   \\_|-_ `===. .===׳   _|_   `===. .===׳ _-|/   `==  \\/  |   ||\','..
  --'\'||      .==׳    _-׳    `-_  `=׳    _-׳   `-_    `=׳  _-׳   `-_  /|  \\/  |   ||\','..
  --'\'||   .==׳    _-׳          ׳-__\\._-׳         ׳-_./__-׳         `׳ |. /|  |   ||\','..
  --'\'||.==׳    _-׳                                                     `׳ |  /==.||\','..
  --'\'==׳    _-׳                        N E O V I M                         \\/   `==\','..
  --'\'\\   _-׳                                                                `-_   /\','..
  --'\' `׳׳                                                                      ``׳ \','..
  --']')

-- vim.cmd('let g:dashboard_custom_header = ['..
  -- '\'-sss-                                      oss+\','..
  -- '\'-sss-`////////:.  :///////:`  :///.  -///- oss+ :///:   `////\','..
  -- '\'+ddd: ddddddddddo sdddddddddy :ddd/  sddd/ dddy odddd/ `sdddd\','..
  -- '\'shhh/ dhhhs+shhhh yhhhs+shhhh :hhh/  ohhh/ hhhh ohhhhh:+hhhhh\','..
  -- '\'yyyyo dyyy` `.... hyyy. `---. +hhhs  ohhh/ hhhh ohhhhhyhhhhhh\','..
  -- '\'syyys hyyy`       hyyy+---.   oyyys  +yyy/ yyyh +yyyyyyyyyyyy\','..
  -- '\'sssss ysss`       ysssssss/   sssss  +sss/ sssy +ssssssssssss\','..
  -- '\'oooos yooo`       yooos+++-   oooos  /ooo/ ooos +oooooooooooo\','..
  -- '\'o+++o s+++` `---- s++++ .---- o+++s  :+++/ o++s ++++y++++++++\','..
  -- '\'o///o s///`.:///o s///+.////o o///+- ://// +//o +///++//+////\','..
  -- '\'+:::o o:::::::::+ o:::/:::::+ //:::/:/:::/ /::+ //::/.//:-:::\','..
  -- '\'+---+ o------:--` o------::-`  .-::::::::: :::+ `.::/ :: -:::\','..
  -- '\'+---+ +----:..    +------.       `-------: ---/    `` .` ----\','..
  -- '\'/.../ +..-``      /..-.`            `--..: ...:          -...\','..
  -- '\'/`..``:-`         /.`                  .-: .-.:          `-.`\','..
  -- '\'-.   `                                       `-             .\','..
  -- ']')




-- vim.g.dashboard_custom_section = {
    -- last_session = {
        -- description = {'  Load Last session                       SPC s l'},
        -- command =  'SessionLoad'
    -- },
    -- find_history = {
        -- description = {'  Recently opened files                   SPC f h'},
        -- command =  'Telescope oldfiles'
    -- },
    -- find_file  = {
        -- description = {'  Find  File                              SPC f f'},
        -- command = 'Telescope find_files'
    -- },
    -- new_file = {
        -- description = {'  File Browser                            SPC f b'},
        -- command =  'Telescope file_browser'
    -- },
    -- find_word = {
        -- description = {'  Find  word                              SPC f w'},
        -- command = 'Telescope live_grep'
    -- },
    -- find_dotfiles = {
        -- description = {'  Settings                                SPC f d'},
         -- command = ':e ~/.config/nvim/init.vim'
     -- },
-- }
-- vim.g.dashboard_custom_section = {
  -- a = {
    -- description = { "  Find File          " },
    -- command = "Telescope find_files",
  -- },
  -- b = {
    -- description = { "  Recently Used Files" },
    -- command = "Telescope oldfiles",
  -- },
  -- -- c = {
  -- --   description = { "  Load Last Session  " },
  -- --   command = "SessionLoad",
  -- -- },
  -- c = {
    -- description = { "  Find Word          " },
    -- command = "Telescope live_grep",
  -- },
  -- d = {
    -- description = { "  Settings           " },
    -- -- command = ":e " .. CONFIG_PATH .. "/lv-config.lua",
    -- command = ":e ~/.config/nvim/init.vim",
  -- },
-- },

vim.g.dashboard_custom_section = {
    last_session = {
        description = {'  Load Last session    '},
        command =  'SessionLoad'
    },
    find_history = {
        description = {'  Recently opened files'},
        command =  'Telescope oldfiles'
    },
    find_file  = {
        description = {'  Find  File           '},
        command = 'Telescope find_files'
    },
    new_file = {
        description = {'  File Browser         '},
        command =  'Telescope file_browser'
    },
    find_word = {
        description = {'  Find  word           '},
        command = 'Telescope live_grep'
    },
    find_dotfiles = {
        description = {'  Settings             '},
         command = ':e ~/.config/nvim/init.vim'
     },
}


vim.g.dashboard_custom_footer = {'Author: Jack Morgan       '}

--vim.g.dashboard_custom_footer = ''
