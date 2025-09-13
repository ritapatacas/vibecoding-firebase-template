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
        create-venv = ''
          echo "🔧 Setting up Python venv..."
          python -m venv .venv
          .venv/bin/python -m pip install --upgrade pip
          if [ -f requirements.txt ]; then
            .venv/bin/python -m pip install -r requirements.txt
          fi
          echo "✅ Environment ready!"
        '';
      };

      onStart = {
        activate-venv = ''
          source .venv/bin/activate
        '';
      };
    };
  };
}
