// Assumes that you have run `npm run build:ps`
// Which creates a symlink to ../output into ../node_modules
// [This is needed because create-react-app doesn't let you link outside src]
import Main from 'output/Main';
Main.main();
