var defaultThreads = [
    {
        id: 1,
        title: "Muster Topic",
        author: "Frank Tsidie",
        date: Date.now(),
        content: "Thread content",
        comments: [
            {
                author: "Ornella Dougouo",
                date: Date.now(),
                content: "Hey there"
            },
            {
                author: "Frank Tsidie",
                date: Date.now(),
                content: "Hey to you too"
            }
        ]
    },
    {
        id: 2,
        title: " was ist eine Selection",
        author: "Sarah Kouakou",
        date: Date.now(),
        content: "Thread content 2",
        comments: [
            {
                author: "sarah",
                date: Date.now(),
                content: "Hey there"
            },
            {
                author: "Frank Tsidie",
                date: Date.now(),
                content: "Hey eine selection in html ist....."
            }
        ]
    },
    {
        id: 2,
        title: " was ist eine Selection",
        author: "Sarah Kouakou",
        date: Date.now(),
        content: "Thread content 2",
        comments: [
            {
                author: "sarah",
                date: Date.now(),
                content: "Hey there"
            },
            {
                author: "Frank Tsidie",
                date: Date.now(),
                content: "Hey eine selection in html ist....."
            }
        ]
    }
]

let test_date = Date.now()
var threads = defaultThreads
if (localStorage && localStorage.getItem('threads')) {
    threads = JSON.parse(localStorage.getItem('threads'));
} else {
    threads = defaultThreads;
    localStorage.setItem('threads', JSON.stringify(defaultThreads));
}