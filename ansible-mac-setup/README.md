# 🍎 Ansible Mac Setup

This repository contains an Ansible playbook and scripts to automate the setup of a new Mac. It installs and configures various tools, applications, and dotfiles to get you up and running quickly.

## 🚀 Quick Start

To set up your new Mac automatically, you have two options:

### Option 1: One-line command (Recommended)

Run the following command in Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/your-username/ansible-mac-setup/main/setup.sh | bash
```

### Option 2: Manual script execution

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/ansible-mac-setup.git
   cd ansible-mac-setup
   ```

2. Make the setup script executable:
   ```bash
   chmod +x setup.sh
   ```

3. Run the setup script:
   ```bash
   ./setup.sh
   ```

## 🛠 Manual Setup

If you prefer to run the steps manually, follow these instructions:

1. Install Xcode Command Line Tools:
   ```bash
   xcode-select --install
   ```

2. Install Homebrew:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Install Ansible:
   ```bash
   brew install ansible
   ```

4. Clone this repository:
   ```bash
   git clone https://github.com/your-username/ansible-mac-setup.git
   cd ansible-mac-setup
   ```

5. Run the Ansible playbook:
   ```bash
   ansible-playbook -i inventory playbook.yml
   ```

## 📦 What's Included

This setup includes:

- 🧰 Common CLI tools (git, vim, tmux, wget, curl, etc.)
- 🖥 GUI applications (Google Chrome, iTerm2, Visual Studio Code, etc.)
- 🐚 Zsh configuration with Oh My Zsh and Powerlevel10k theme
- 🔧 Development tools (Node.js, pnpm, NVM)
- 🔍 Productivity tools (fzf, fd, zoxide, thefuck, Yazi)
- 📄 Dotfiles management

## 🎨 Customization

To customize this setup:

1. Modify the roles in `roles/` directory to add or remove packages.
2. Update the `zshrc.j2` template in `roles/dotfiles/templates/` to change Zsh configuration.
3. Edit the `playbook.yml` file to add or remove roles.

## 🔄 Updating

To update your setup:

1. Pull the latest changes from this repository.
2. Run the Ansible playbook again:
   ```bash
   ansible-playbook -i inventory playbook.yml
   ```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgements

- [Ansible](https://www.ansible.com/)
- [Homebrew](https://brew.sh/)
- [Oh My Zsh](https://ohmyz.sh/)
- And all the amazing open-source tools included in this setup!
