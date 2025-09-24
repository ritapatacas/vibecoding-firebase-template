{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.python3
  ];

  env = {};

  idx = {
    extensions = [
      "ms-python.python"
      "google.gemini-cli-vscode-ide-companion"
    ];

    workspace = {
      onCreate = {
        setup-workspace = ''
          echo "🔧 Setting up Python aliases for you..."
          echo "alias setup-venv='python -m venv .venv && source .venv/bin/activate && pip install --upgrade pip'" >> ~/.bashrc
          echo "alias activate='source .venv/bin/activate'" >> ~/.bashrc
          source ~/.bashrc
          
          echo "🖥️ Setting up auto-activating terminal..."
          mkdir -p .vscode
          
          # VSCode settings
          cat > .vscode/settings.json << 'EOF'
{
  "terminal.integrated.defaultProfile.linux": "Python Venv",
  "terminal.integrated.profiles.linux": {
    "bash": {
      "path": "/bin/bash",
      "args": ["--init-file", ".vscode/terminal-init.sh"]
    },
    "Python Venv": {
      "path": "/bin/bash",
      "args": ["--init-file", ".vscode/terminal-init.sh"]
    }
  },
  "terminal.integrated.automationProfile.linux": {
    "path": "/bin/bash",
    "args": ["--init-file", ".vscode/terminal-init.sh"]
  }
}
EOF
          
          # Terminal startup script
          cat > .vscode/terminal-init.sh << 'EOF'
#!/bin/bash
# Source the default bashrc first
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Try to activate venv if it exists
if [ -f .venv/bin/activate ]; then
    source .venv/bin/activate
    echo "🐍 Virtual environment activated!"
else
    echo "💡 No virtual environment found. Run 'setup-venv' to create one!"
fi
EOF
          chmod +x .vscode/terminal-init.sh
          
          echo "✅ All terminals will auto-activate your virtual environment!"
          echo ""
          echo "🎓 STUDENTS: Run 'setup-venv' to create your Python environment!"
          echo ""
        '';
      };
    };
  };
}