# Claude LinkedIn Automation — Install Demo
# Generates: assets/demo.gif
#
# Run:  vhs demo.tape
#
# This shows the install flow only.
# For the /linkedin wizard demo, screen-record a real Claude session
# (see README or run: /linkedin in Claude Code)

Output assets/demo.gif

Set Shell "bash"
Set FontSize 15
Set Width 880
Set Height 480
Set Theme "Catppuccin Mocha"
Set TypingSpeed 50ms
Set Padding 16

# Title
Type "# Claude LinkedIn Automation — Install"
Enter
Sleep 1s

# Clone
Type "git clone https://github.com/videomakingio-gif/claude-linkedin-automation.git"
Enter
Sleep 2.5s

# Enter dir
Type "cd claude-linkedin-automation"
Enter
Sleep 500ms

# Run installer with --global (non-interactive, clean output)
Type "chmod +x install.sh && ./install.sh --global"
Enter
Sleep 3s

# Show it's installed
Type "# Installed! Now use /linkedin in any Claude session"
Enter
Sleep 1.5s

# Launch claude (simulated prompt)
Type "claude"
Enter
Sleep 2s

# Type the command
Type "/linkedin"
Enter
Sleep 4s
