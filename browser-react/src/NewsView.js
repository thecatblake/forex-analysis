

export function NewsView({ content, link}) {
    return <div className="news-view">
        <a className="news-link" href={link}>{content}</a>
    </div>
}