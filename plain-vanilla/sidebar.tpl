<ul>
{foreach from=$plugindata item=item}
        <li>
            <h2>{$item.title}</h2>
            <p>{$item.content}</p>
    </li>
{/foreach}
</ul>
