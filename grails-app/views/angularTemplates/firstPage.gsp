<div class="widget widget-blue">
  <div class="widget-title">
    <div class="widget-controls">
     
      <a href="javascript:;" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
    </div>
    <h3> Sample Table</h3>
  </div>
  <div class="widget-content">
    <div class="alert alert-warning">
      <p>Use <code>.table-striped</code> to add zebra-striping to any table row within the <code>&lt;tbody&gt;</code>.</p>
    </div>
    <div class="table-responsive">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          <tr ng-repeat="d in data">
            <td ng-bind="d.id"></td>
            <td ng-bind="d.name"></td>
            <td ng-bind="d.lastName"></td>
            <td ng-bind="d.dob"></td>
          </tr>
       
        </tbody>
      </table>
    </div>
  </div>
</div>