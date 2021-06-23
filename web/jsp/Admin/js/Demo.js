/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

        function Pager(parentItems, itemsPerPage) {
            this.parentItems = parentItems;
            this.itemsPerPage = itemsPerPage;
            this.currentPage = 1;
            this.pages = 0;
            this.inited = false;

            this.showRecords = function (from, to) {
                //var rows = document.getElementById(tableName).rows;
                var item = $(parentItems).children();
                // i starts from 1 to skip table header row
                for (var i = 0; i < item.size() ; i++) {
                    if (i < from || i > to)
                        item[i].style.display = 'none';
                    else
                        item[i].style.display = '';
                }
            }

            this.showPage = function (pageNumber) {
                if (!this.inited) {
                    alert("not inited");
                    return;
                }

                var oldPageAnchor = document.getElementById('page-' + this.currentPage);
                oldPageAnchor.parentElement.className = 'page-item';

                this.currentPage = pageNumber;
                var newPageAnchor = document.getElementById('page-' + this.currentPage);
                var liParent = newPageAnchor.parentElement;
                var liFirst = liParent.parentElement.firstElementChild;
                var liLast = liParent.parentElement.lastElementChild;
                liFirst.className = 'page-item';
                liLast.className = 'page-item';
                if (this.currentPage == 1) {
                    liFirst.className = 'page-item disabled';
                }
                if (this.currentPage == this.pages) {
                    liLast.className = 'page-item disabled';
                }
                newPageAnchor.parentElement.className = 'page-item active';

                var from = (pageNumber - 1) * itemsPerPage;
                var to = from + itemsPerPage - 1;
                this.showRecords(from, to);
            }

            this.prev = function () {
                if (this.currentPage > 1)
                    this.showPage(this.currentPage - 1);
            }

            this.next = function () {
                if (this.currentPage < this.pages) {
                    this.showPage(this.currentPage + 1);
                }
            }

            this.init = function () {
                //var rows = document.getElementById(tableName).rows;
                //var records = (rows.length - 1);
                var item = $(parentItems).children();
                var records = item.size();
                this.pages = Math.ceil(records / itemsPerPage);
                this.inited = true;
            }

            this.showPageNav = function (pagerName, positionId) {
                if (!this.inited) {
                    alert("not inited");
                    return;
                }
                var element = document.getElementById(positionId);
                var pagerHtml = '<ul  class="pagination">';
                pagerHtml += '<li class="page-item"><a href="javascript:' + pagerName + '.prev();" class="page-link"> &#171 Prev </a></li>';
                for (var page = 1; page <= this.pages; page++)
                    pagerHtml += '<li><a href="javascript:' + pagerName + '.showPage(' + page + ');" id="page-' + page + '" class="page-link">' + page + '</a></li>';
                pagerHtml += '<li class="page-item"><a href="javascript:' + pagerName + '.next();" class="page-link"> Next &#187;</a></li></ul>';

                element.innerHTML = pagerHtml;
            }
        }
        var pager = new Pager('#data-table tbody', 1);
        pager.init();
        pager.showPageNav('pager', 'page-navigation');
        pager.showPage(1);