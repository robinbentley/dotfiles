sublime_dir="$HOME/Library/Application Support/Sublime Text 3"
sublime_installed_packages_dir="${sublime_dir}/Installed Packages"
sublime_user_package_dir="${sublime_dir}/Packages/User"

#check to see if package control is already installed
package_control_is_installed() {
  ls "${sublime_installed_packages_dir}" | egrep -q "Package Control.sublime-package"
}

echo "Installing sublime package control..."
if package_control_is_installed ; then
  echo "Package Control is already installed.."
else
  echo "Installing Package Control to ${sublime_installed_packages_dir}"
  wget https://packagecontrol.io/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
fi

echo "Linking sublime preferance files..."
ln -sfv $(pwd)/sublime/* "${sublime_user_package_dir}"
