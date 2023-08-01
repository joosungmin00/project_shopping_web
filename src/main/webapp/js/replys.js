let contents;


const replyBtns = document.querySelectorAll(".reply-btn");
replyBtns.forEach(btn => {
	// 댓글 보기
	btn.addEventListener('click', getReply);
});

const replySubmitBtns = document.querySelectorAll(".reply-submit-btn");
replySubmitBtns.forEach(addBtn => {
	addBtn.addEventListener('click', submitReply);
});

async function submitReply(event) {
	event.preventDefault();
	const postId = event.currentTarget.value;
	let textArea =document.querySelector("#reply-" + postId);
	contents = textArea.value;

	// 댓글 등록 요청 보내기
	let replys = await requestReplys(postId, contents);
	// 댓글 목록 보여주기		
	showReply(replys, postId);
	textArea.value = '';
}


async function getReply(event) {
	const postId = event.currentTarget.value;
	let replys = await requestReplys2(postId);
	
	showReply(replys, postId);
}


async function requestReplys(postId, contents) {
	const url = `/mall/addReply?postId=${postId}&contents=${contents}`;
	return fetch(url).then(response => response.json());
}

async function requestReplys2(postId) {
    const url = `/mall/getReplys?postId=${postId}`;
    //return fetch(url).then(response => response.json());
    const response = await fetch(url);
    const data = await response.json();

    return data;
}


// 댓글 보여주기
function showReply(replys, postId) {
	
	const replyView = document.querySelector(`#replyView-${postId}`);
	//const postId = replyView.dataset.id;
	
	// postId와 일치하는 댓글만 필터링
	const filteredReplys = replys.filter(reply => reply.postId === postId);
	
	
	let ul = '<ul>';

    filteredReplys.forEach(reply => {
        ul += `<li>${reply.contents}(${reply.datecreated}) - ${reply.customerId}</li>`;
    });

    ul += '</ul>';
    replyView.innerHTML = ul;
    }
	






