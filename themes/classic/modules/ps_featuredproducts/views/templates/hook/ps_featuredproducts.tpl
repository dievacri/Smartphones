{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
 {*
<section class="featured-products clearfix">
  <h1 class="h1 products-section-title text-uppercase">
    {l s='Popular Products' d='Shop.Theme.Catalog'}
  </h1>
  <div class="products">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
  <a class="all-product-link float-xs-left float-md-right h4" href="{$allProductsLink}">
    {l s='All products' d='Shop.Theme.Catalog'}<i class="material-icons">&#xE315;</i>
  </a>
</section>
*}
<div class="sp-category">
  <div class="sp-category-title">
      {l s='Popular Products' d='Shop.Theme.Catalog'}
  </div>
  <div class="sp-category-description">
      Lorem Ipsum Dolor Sit Ammet
  </div>
  <div class="sp-category-products">
    {foreach from=$products item="product"}
        <div class="sp-category-product">
            <div class="sp-category-product-image">
                <img src="{$product.cover.bySize.home_default.url}" alt="">
            </div>
            <div class="sp-category-product-name">
                {$product.name|truncate:30:'...'}
            </div>
            <div class="sp-category-product-info">
                <div class="sp-category-pricing">
                    <span class="sp-category-pricing-discounted">{$product.price}</span>
                    <span class="sp-category-pricing-real">{$product.regular_price}</span>
                </div>    
                <div class="sp-category-action">
                    <button>Comprar</button>
                </div>    
            </div>
        </div>
    {/foreach}
  </div>
</div>

{literal}

	
      <script>
      	$(document).ready(function() {
	        $(".sp-category-products").slick({
	          infinite: true,
	          slidesToShow: 4,
	          initialSlide: 0,
	          autoplay:true,
	          slidesToScroll: 4,
	          centerMode: true,
	          centerPadding: '0px',
	          responsive: [
			    {
			      breakpoint: 1024,
			      settings: {
			        slidesToShow: 3,
			        slidesToScroll: 3,
			        initialSlide: 0,
			        infinite: true,
			        autoplay:true,
			        centerMode: true,
			        centerPadding: '0px',
			      }
			    },
			    {
			      breakpoint: 600,
			      settings: {
			        slidesToShow: 2,
			        initialSlide: 0,
			        autoplay:true,
			        slidesToScroll: 2,
			        centerMode: true,
			        centerPadding: '0px',
			      }
			    },
			    {
			      breakpoint: 480,
			      settings: {
			        slidesToShow: 1,
			        autoplay:true,
			        initialSlide: 0,
			        slidesToScroll: 1,
			        centerMode: true,
			        centerPadding: '0px',
			      }
			    }
			  ]
	        });
      });
      </script>
  

{/literal}