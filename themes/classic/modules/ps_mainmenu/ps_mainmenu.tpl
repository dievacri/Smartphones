{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count}
    {foreach from=$nodes item=node}
        <div class="sp-category {if $node.current} current {/if}">
        {assign var=_counter value=$_counter+1}
          {if $node.page_identifier eq 'category-3'}
          <div class="sp-category-icon-phone">
              <!-- <a href="{$node.url}"> -->
              <a>
                  <img src="/img/v2/sp-phone.png" alt="">
              </a>
          </div>
          {/if} 
          {if $node.page_identifier eq 'category-4'}
          <div class="sp-category-icon-tablet">
              <!-- <a href="{$node.url}"> -->
              <a>
                  <img src="/img/v2/sp-tablet.png" alt="">
              </a>
          </div>
          {/if}
          {if $node.page_identifier eq 'category-5'}
          <div class="sp-category-icon-computer">
              <!-- <a href="{$node.url}"> -->
              <a>
                <img src="/img/v2/sp-computer.png" alt="">
              </a>
          </div>
          {/if}
          {if $node.page_identifier eq 'category-7'}
          <div class="sp-category-icon-tv">
              <!-- <a href="{$node.url}"> -->
              <a>
                  <img src="/img/v2/sp-tv.png" alt="">
              </a> 
          </div>
          {/if}
          {if $node.page_identifier eq 'category-8'}
          <div class="sp-category-icon-accesories">
              <!-- <a href="{$node.url}"> -->
              <a>
                <img src="/img/v2/sp-accesories.png" alt="">
              </a>
          </div>
          {/if}
          {assign var=_expand_id value=10|mt_rand:100000}
          <a
            class="{if $depth >= 0}dropdown-item navbar-toggler{/if}{if $depth === 1} dropdown-submenu{/if} sp-category-name"
            href="{$node.url}" data-depth="{$depth}"
            {if $node.open_in_new_window} target="_blank" {/if}
            {if $node.children|count} data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" {/if}
          >
            <!-- {if $node.children|count}
              {* Cannot use page identifier as we can have the same page several times *}
              
              <span class="float-xs-right hidden-md-up">
                <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                  <i class="material-icons add">&#xE313;</i>
                  <i class="material-icons remove">&#xE316;</i>
                </span>
              </span>
            {/if} -->
            {$node.label}
          </a>
          {if $node.children|count}
          {*<div {if $depth === 0} class="popover sub-menu js-sub-menu collapse"{else} class="collapse"{/if} id="top_sub_menu_{$_expand_id}">*}
            {*{menu nodes=$node.children depth=$node.depth parent=$node}*}
          {*</div>*}
          {/if}
        </div>
    {/foreach}
    {/if}
{/function}

<div class="sp-categories hide-animated">
    {menu nodes=$menu.children}
</div>
