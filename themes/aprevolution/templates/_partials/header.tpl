{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
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
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='main_banner'}
<div id="main_banner" class="main-banner">
  <div class="pull-right p-2">
    {hook h='displayLanguageSelector'}
  </div>
</div>
{/block}
{block name='header_top'}
  <div id="navbar_top" class="header-top">
    <div id="main_navbar_top" class="container-fluid">
      <div class="row">
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-left" id="menu-icon">
            <i class="material-icons d-inline">&#xE5D2;</i>
          </div>
          <div class="float-xs-right" id="_mobile_cart"></div>
          <div class="float-xs-right" id="_mobile_user_info"></div>
          <div class="top-logo hidden-fade" id="_mobile_logo"></div>
          <div class="clearfix"></div>
        </div>
      </div>
       <div class="row nav-row">
        <div id="_desktop_logo" class="hidden-sm-down banner-logo">
          {if $shop.logo_details}
            {if $page.page_name == 'index'}
              <h1>
                {renderLogo}
              </h1>
            {else}
              {renderLogo}
            {/if}
          {/if}
            </div>
        <div class="display-menu-col">
          {hook h='displayMainMenu'}
        </div>
        <div class="hidden-md-up search-mobile">
          {hook h='displaySearch'}
        </div>
        <div class="hidden-sm-down header-top">
          <div class="right-nav-bar" >
            <div >
              <div class="search-icon">
              <i class="material-icons">&#xe8b6;</i>
              </div>
            </div>
            <div >
            {hook h='displayCustomerSignin'}
            </div>
            <div class="cart-container">
            {hook h='displayShoppingCart'}
            </div>
          </div>
      </div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>
    </div>
    <div class="search-bar-desktop hidden-sm-down hidden">
      {hook h='displaySearch'}
    </div>
  </div>

  {hook h='displayNavFullWidth'}
{/block}
