function copyCommand(e) {
    var parent = e.closest("p")
    var text = parent.textContent;
    // alert(text);
    navigator.clipboard.writeText(text);
}

function addCopyLinks() {
    var commandLines = document.getElementsByClassName('command');

    for (let i = 0; i < commandLines.length; i++) {
        var copyLink = document.createElement('a');
        copyLink.setAttribute('href', 'javascript:void(0);');
        copyLink.setAttribute('onclick', 'copyCommand(this)');

        var cloneIcon = document.createElement('i');
        cloneIcon.setAttribute('class', 'fas fa-clone');

        copyLink.appendChild(cloneIcon);

        commandLines[i].insertAdjacentElement('beforeend', copyLink);
    }
}

addCopyLinks();