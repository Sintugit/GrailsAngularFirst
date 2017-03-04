<div class="widget widget-blue">
  <div class="widget-title">
    <div class="widget-controls">

      <a href="javascript:;" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
    </div>
    <h3>Email Notification</h3>
  </div>
  <div class="widget-content">
    <table class="table table-striped">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Actions</th>
            <th></th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr ng-repeat="d in data">
            <td ng-bind="d.id"></td>
            <td></td>
            <td ng-bind="d.name"></td>
            <td></td>
            <td ng-bind="d.status"></td>
          </tr>

        </tbody>
      </table>
  </div>
</div>