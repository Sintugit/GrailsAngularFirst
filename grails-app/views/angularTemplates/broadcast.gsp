<div class="widget widget-blue">
  <div class="widget-title">
    <div class="widget-controls">

      <a href="javascript:;" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
    </div>
    <h3>Email Notification</h3>
  </div>

  <div class="widget-content">
      <div class="container">
       <div class="tabs-container">
        <ul  class="nav nav-pills">
            <li class="active">
                <a  href="#details" data-toggle="tab">details</a>
            </li>
            <li>
                <a href="#analytics" data-toggle="tab">analytics</a>
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
                <button class="action-button" ng-click="removeRow($index)">
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
  </div>
</div>