

// selecting filter menu and filter items
let filterMenu = document.querySelectorAll('.filter-menu li');
let filterContents = document.querySelectorAll('.filter-content');

// delete construction projects
for (let i = 0; i < filterContents.length; i++) {
    if (filterContents[i].getAttribute('data-item') === 'construction') {
        filterContents[i].classList.add('deleteContents');
    }
}

// filter construction and interior projects
for (let i = 0; i < filterMenu.length; i++) {
    filterMenu[i].addEventListener('click', () => {
        // delete active menu
        for (let j = 0; j < filterMenu.length; j++) {
            filterMenu[j].classList.remove('active-menu');
        }

        // select active menu
        filterMenu[i].classList.add('active-menu');
        let attrValue = filterMenu[i].getAttribute('data-list');

        for (let k = 0; k < filterContents.length; k++) {
            // delete all active contents 
            filterContents[k].classList.add('deleteContents');
            filterContents[k].classList.remove('activeContents');

            // display filter contents
            if (filterContents[k].getAttribute('data-item') === attrValue) {
                filterContents[k].classList.add('activeContents');
                filterContents[k].classList.remove('deleteContents');
            }
        }
    });
}

