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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

<h2>{l s='Discounts' d='Modules.Psgdpr.Export'}</h2>
<br>
<table id="summary-tab" width="100%">
    <tr>
        {foreach from=$discounts['headers'] item=header}
        <th class="header" valign="middle">{$header}</th>
        {/foreach}
    </tr>

    {if count($discounts['data']) >= 1}
    {foreach from=$discounts['data'] item=discount}
    <tr>
        <td class="center white">{$discount['discountId']|escape:'html':'UTF-8'}</td>
        <td class="center white">{$discount['code']|escape:'html':'UTF-8'}</td>
        <td class="center white">{$discount['name']|escape:'html':'UTF-8'}</td>
        <td class="center white">{$discount['description']|escape:'html':'UTF-8'}</td>
    </tr>
    {/foreach}
    {else}
    <tr>
        <td colspan="5" class="center white">{l s='No discount' d='Modules.Psgdpr.Export'}</td>
    </tr>
    {/if}
</table>
