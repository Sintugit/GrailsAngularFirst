<div class="col-md-12">
    <div class="row">
        <form class="form">
            <div class="col-md-8">
                <div class="row">
                    <div class="form-group col-sm-2">
                        <select class="form-control">
                            <option>Search By</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-3">
                        <select class="form-control">
                            <option>Select Broadcast Type </option>
                        </select>
                    </div>
                    <div class="form-group col-sm-2">
                        <div class="input-group date" id="datetimepicker1">
                            <input type="text" class="form-control" placeholder="From" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group col-sm-2">
                        <div class="input-group date" id="value2">
                            <input type="text" class="form-control" placeholder="To" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 right_sec ">
                <div class="row">
                 <div class="form-group pull-left">
                        <button type="button" class="btn btn-primary ">Search</button>
                    </div>
                    <div class="form-group  pull-right">
                        <button type="button" class="btn btn-primary">New Broadcast</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="${resource(dir:'js/angular',file:'custom.js')}"></script>
<div class="widget widget-blue">
    <div class="widget-title">
        <div class="widget-controls">
        <a href="javascript:;" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
        </div>
        <h3>Email Notification</h3>
    </div>

    <div class="widget-content">
        <div class="tabs-container">
            <ul  class="nav nav-pills">
                <li class="active">
                    <a  href="${request.forwardURI}#details" data-toggle="tab">details</a>
                </li>
                <li>
                    <a href="${request.forwardURI}#analytics" data-toggle="tab">analytics</a>
                </li>
            </ul>
            <div class="tab-content clearfix">
                <div class="tab-pane active" id="details">
                    <div class="item-header">
                        <div class="item-id">
                            <h5>ID</h5>
                        </div>
                        <div class="item-name">
                            <h5>name</h5>
                        </div>
                        <div class="item-action">
                            <h5>Action</h5>
                        </div>
                        <div class="item-status">
                            <h5>status</h5>
                        </div>
                    </div>
                    <div class="item-data"  ng-repeat="x in data">
                        <div class="item-id">
                            <h5 ng-bind="x.id"></h5>
                        </div>
                        <div class="left-section">
                            <input type="checkbox">
                        </div>
                        <div class="item-name">
                            <p ng-bind="x.name"></p>
                            <p class="small"><b>created</b><span ng-bind="x.createdOn"></span> | <b>Scheduled</b> <span ng-bind="x.scheduledOn">on 22 dec 2016 @3:16pm</span></p>
                            <span ng-repeat="t in x.tags">
                            <p class="label label-danger"><span ng-bind="t"></span><span class="glyphicon glyphicon-remove" aria-hidden="true" ng-click="removeTag($index,x.tags)"></span></p>
                            </span>
                        </div>
                        <div class="item-action">
                            <a href="#" class="action-button">
                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>view
                            </a>
                            <button class="action-button" ng-click="copyRow(x)">
                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>copy
                            </button>
                            <a href="#" class="action-button">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>edit
                            </a>
                            <button class="action-button" ng-click="removeRow($index,x.id)">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>delete
                            </button>
                            <button class="action-button" ng-if="x.status != 'Sent' && x.status == 'Suspended'" ng-click="changeStatus(x)">
                                <span class="glyphicon glyphicon-play" aria-hidden="true"></span>resume
                            </button>
                            <button class="action-button" ng-if="x.status != 'Sent' && x.status == 'Running'" ng-click="changeStatus(x)">
                                <span class="glyphicon glyphicon-pause" aria-hidden="true"></span>suspend
                            </button>
                        </div>
                        <div class="item-status">
                            <h5 class="label-running" ng-if="x.status == 'Running'" ng-bind="x.status"></h5>
                            <h5 class="label-suspended" ng-if="x.status == 'Suspended'" ng-bind="x.status"></h5>
                            <h5 class="label-sent" ng-if="x.status == 'Sent'" ng-bind="x.status"></h5>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="analytics">
                    <div class="item-header">
                        <div class="item-id">
                            <h5>ID</h5>
                        </div>
                        <div class="item-name">
                            <h5>name</h5>
                        </div>
                        <div class="item-sent box-6">
                            <h5>Sent</h5>
                        </div>
                        <div class="item-delivered box-6">
                            <h5>Delivered</h5>
                        </div>
                        <div class="item-bounce box-6">
                            <h5>bounce</h5>
                        </div>
                        <div class="item-uq-open box-6">
                            <h5>unique opens</h5>
                        </div>
                        <div class="item-uq-click box-6">
                            <h5>unique clicks</h5>
                        </div>
                        <div class="item-unsub box-6">
                            <h5>unsub</h5>
                        </div>
                        <div class="item-abuse box-6">
                            <h5>abuse</h5>
                        </div>
                    </div>
                    <div class="item-data" ng-repeat="x in analyticData">
                        <div class="item-id">
                            <h5 ng-bind="x.id"></h5>
                        </div>
                        <div class="item-name">
                            <p ng-bind="x.name">Copy:22 Dec 2016 @3:31pm-Copy:22 Dec 2016 @2:27pm-B2B2C test 2022</p>
                            <p class="small"> <b>sent on</b> on <span data-bind="x.sentOn"></span> <button type="button" data-toggle="modal" data-target="#myModal" class="view-button">view</button></p>
                            <span ng-repeat="t in x.tags">
                            <p class="label label-danger"><span ng-bind="t"></span><span class="glyphicon glyphicon-remove" aria-hidden="true" ng-click="removeTag($index,x.tags)"></span></p>
                            </span>
                        </div>
                        <div class="item-sent box-6">
                            <p class="link-color" ng-bind="x.sent"></p>
                        </div>
                        <div class="item-delivered box-6">
                            <p class="link-color" ng-bind="x.delivered"></p>
                            <p><span ng-bind="x.delPer"></span>%</p>
                        </div>
                        <div class="item-bounce box-6">
                            <p class="link-color"  ng-bind="x.bounce"></p>
                            <p><span ng-bind="x.bouncePer"></span>%</p>
                        </div>
                        <div class="item-uq-open box-6">
                            <p class="link-color" ng-bind="x.uniqueOpen"></p>
                            <p><span ng-bind="x.uoPer"></span>%</p>
                        </div>
                        <div class="item-uq-click box-6">
                            <p class="link-color" ng-bind="x.uniqueClick"></p>
                            <p><span ng-bind="x.ucPer"></span>%</p>
                        </div>
                        <div class="item-unsub box-6">
                            <p class="link-color" ng-bind="x.unsub"></p>
                            <p><span ng-bind="x.unsubPer"></span>%</p>
                        </div>
                        <div class="item-abuse box-6">
                            <p class="link-color" ng-bind="x.abuse"></p>
                            <p><span ng-bind="x.abusePer"></span>%</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div id="myModal" class="modal fade analytics" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->

    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Analytics Details</h4>
      </div>
      <div class="modal-body">
        <div class="top-header">
			<div class="left-header-section">
				<p><b>Broadcast Name:</b>Copy:22 Dec 2016 @2:27pm-B2B2C test 2212..</p>
			</div>
			<div class="right-header-section">
				<a href="" class="buttons"><span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>Download report</a>
			</div>
		</div>
			<div class="anal-detail">
				<div class="detail-box">
					<h4>100%</h4>
					<p>3</p>
					<p>sent</p>
				</div>
				<div class="detail-box delivered">
					<h4>100%</h4>
					<p>3</p>
					<p>delivered</p>
				</div>
				<div class="detail-box">
					<h4>100%</h4>
					<p>3</p>
					<p>bounces</p>
				</div>
				<div class="detail-box">
					<h4>133.3%</h4>
					<p>3</p>
					<p>total opens</p>
				</div>
				<div class="detail-box">
					<h4>100%</h4>
					<p>3</p>
					<p>unique opens</p>
				</div>
				<div class="detail-box zero">
					<h4>0%</h4>
					<p>3</p>
					<p>sent</p>
				</div>
				<div class="detail-box zero">
					<h4>0%</h4>
					<p>3</p>
					<p>sent</p>
				</div>
			</div>
			<div class="right-form">
				<form class="form">
					<div class="col-sm-5"></div>
					<div class="form-group col-sm-2">
						<select class="form-control">
							<option>Search By</option>
						</select>
					</div>
					<div class="form-group col-sm-2">
						<input type="text" class="form-control" placeholder="Enter Email ID" />
					</div>
					<div class="form-group col-sm-1">
						<button type="button" class="btn btn-primary ">Search</button>
					</div>
				</form>
			</div>
			<div class="anal-table">
				<div class="table-header">
					<div class="serial box-8">
						<h5>S.No.</h5>
					</div>
					<div class="broad-date box-22">
						<h5>Broadcast Date</h5>
					</div>
					<div class="primary-key box-22">
						<h5>Primary Key (Clientcode)</h5>
					</div>
					<div class="recipient box-26">
						<h5>Recipient</h5>
					</div>
					<div class="details box-22">
						<h5>Details</h5>
					</div>
				</div>
				<div class="table-data">
					<div class="serial box-8">
						<p>1.</p>
					</div>
					<div class="broad-date box-22">
						<p>2015-07-16T22:30:59Z</p>
					</div>
					<div class="primary-key box-22">
						<p>Dummyjal2</p>
					</div>
					<div class="recipient box-26">
						<p>jalpa.dinesh@angelbooking.com</p>
					</div>
					<div class="details box-22">
						<p>sent successfully and viewd</p>
					</div>
				</div>
				<div class="table-data">
					<div class="serial box-8">
						<p>1.</p>
					</div>
					<div class="broad-date box-22">
						<p>2015-07-16T22:30:59Z</p>
					</div>
					<div class="primary-key box-22">
						<p>Dummyjal2</p>
					</div>
					<div class="recipient box-26">
						<p>jalpa.dinesh@angelbooking.com</p>
					</div>
					<div class="details box-22">
						<p>sent successfully and viewd</p>
					</div>
				</div>
				<div class="table-data">
					<div class="serial box-8">
						<p>1.</p>
					</div>
					<div class="broad-date box-22">
						<p>2015-07-16T22:30:59Z</p>
					</div>
					<div class="primary-key box-22">
						<p>Dummyjal2</p>
					</div>
					<div class="recipient box-26">
						<p>jalpa.dinesh@angelbooking.com</p>
					</div>
					<div class="details box-22">
						<p>sent successfully and viewd</p>
					</div>
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default buttons" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
