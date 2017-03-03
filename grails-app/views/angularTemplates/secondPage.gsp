<div class="page-profile">
  <div class="profile-user-box">
    <div class="row">
      <div class="col-sm-3">
        <div class="avatar-w">
          <img src="${request.getContextPath()}/images/avatar-large.jpg" alt="" class="img-max">
        </div>
        <div class="sub-avatar-buttons">
          <a href="#" class="btn btn-default btn-sm"><i class="fa fa-pencil"></i> Change Avatar</a>
        </div>
      </div>
      <div class="col-sm-9 col-md-5 col-lg-4">
        <div class="profile-main-info">
          <h1>{{name}}</h1>
          <p ng-bind="description"></p>
          <a href="javascript:;">example.com <i class="fa fa-external-link-square icon-left-margin"></i></a>
        </div>
        <div class="profile-details visible-lg">
          <div class="row">
            <div class="col-lg-4">
              <div class="icon"><i class="fa fa-map-marker"></i></div> Australia
            </div>
            <div class="col-lg-4">
              <div class="icon"><i class="fa fa-calendar"></i></div> Jul 17
            </div>
            <div class="col-lg-4">
              <div class="icon"><i class="fa fa-male"></i></div> Male
            </div>
          </div>
        </div>
      </div>

    </div>
    <div class="profile-details hidden-lg">
      <div class="row">
        <div class="col-md-2 col-sm-3">
          <div class="icon"><i class="fa fa-map-marker"></i></div> Australia
        </div>
        <div class="col-md-2 col-sm-3">
          <div class="icon"><i class="fa fa-calendar"></i></div> Jul 17
        </div>
        <div class="col-md-2 col-sm-3">
          <div class="icon"><i class="fa fa-male"></i></div> Male
        </div>
        <div class="col-md-2 col-sm-3">
          <div class="icon"><i class="fa fa-laptop"></i></div> Windows 8
        </div>
        <div class="col-md-2 visible-md">
          <div class="icon"><i class="fa fa-tasks"></i></div> Active
        </div>
        <div class="col-md-2 visible-md">
          <div class="icon"><i class="fa fa-trophy"></i></div> Winner
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="widget widget-red">
        <span class="offset_anchor" id="widget_send_a_message"></span>
        <div class="widget-title">
          <div class="widget-controls">
            <a href="#" class="widget-control widget-control-full-screen" data-toggle="tooltip" data-placement="top" title="" data-original-title="Full Screen"><i class="fa fa-expand"></i></a>
            <a href="#" class="widget-control widget-control-full-screen widget-control-show-when-full" data-toggle="tooltip" data-placement="left" title="" data-original-title="Exit Full Screen"><i class="fa fa-expand"></i></a>
         
            <a href="#" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
           </div>
          <h3><i class="fa fa-envelope"></i> Send Me a Message</h3>
        </div>
        <div class="widget-content">

          <div class="widget-foot">
            <div class="create-chat-message-w">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Your message here...">
                <span class="input-group-btn">
                  <button class="btn btn-danger" type="button">Send</button>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="widget widget-green">
        <span class="offset_anchor" id="widget_server_activity"></span>
        <div class="widget-title">
          <div class="widget-controls">
            <a href="#" class="widget-control widget-control-full-screen" data-toggle="tooltip" data-placement="top" title="" data-original-title="Full Screen"><i class="fa fa-expand"></i></a>
            <a href="#" class="widget-control widget-control-full-screen widget-control-show-when-full" data-toggle="tooltip" data-placement="left" title="" data-original-title="Exit Full Screen"><i class="fa fa-expand"></i></a>
         
            <a href="#" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
           </div>
          <h3><i class="fa fa-warning"></i> Recent Activity</h3>
        </div>
        <div class="widget-content">
          <ul class="activity-list">
            <li>
              <div class="row">
                <div class="col-xs-9"><p><i class="fa fa-bell activity-image"></i> Become friends with <a href="#">Michael Mayers</a></p></div>
                <div class="col-xs-3 text-right"><span class="activity-time">5 min</span></div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-9"><p><i class="fa fa-fire activity-image"></i> Server crash happened <span class="label label-danger">warning</span></p></div>
                <div class="col-xs-3 text-right"><span class="activity-time">8 min</span></div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-9"><p><i class="fa fa-flag-o activity-image"></i> You have 5 pending alerts for account</p></div>
                <div class="col-xs-3 text-right"><span class="activity-time">12 min</span></div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-9"><p><i class="fa fa-smile-o activity-image"></i> New user registration <span class="label label-success">great</span></p></div>
                <div class="col-xs-3 text-right"><span class="activity-time">15 min</span></div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-9"><p><i class="fa fa-bell activity-image"></i> You have 5 pending alerts for account</p></div>
                <div class="col-xs-3 text-right"><span class="activity-time">25 min</span></div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="widget widget-blue">
        <div class="widget-title">
          <div class="widget-controls">
            <a href="#" class="widget-control widget-control-full-screen" data-toggle="tooltip" data-placement="top" title="" data-original-title="Full Screen"><i class="fa fa-expand"></i></a>
            <a href="#" class="widget-control widget-control-full-screen widget-control-show-when-full" data-toggle="tooltip" data-placement="left" title="" data-original-title="Exit Full Screen"><i class="fa fa-expand"></i></a>
            <a href="#" class="widget-control widget-control-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Refresh"><i class="fa fa-refresh"></i></a>
          </div>
          <h3><i class="fa fa-comments"></i> User Chat</h3>
        </div>
        <div class="widget-content">
          <ul class="chat-messages-list">
            <li>
              <div class="row">
                <div class="col-xs-2">
                  <div class="avatar">
                    <img src="${request.getContextPath()}/images/avatar-small.jpg" alt="">
                  </div>
                </div>
                <div class="col-xs-10">
                  <div class="chat-bubble chat-bubble-right">
                    <div class="bubble-arrow"></div>
                    <div class="meta-info"><a href="#">Andres Iniesta</a> on Jun 25</div>
                    <p>Collaboratively administrate empowered markets via plug-and-play networks.</p>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-10">
                  <div class="chat-bubble chat-bubble-left">
                    <div class="bubble-arrow"></div>
                    <div class="meta-info"><a href="#">Andres Iniesta</a> on Jun 25</div>
                    <p>Collaboratively administrate empowered markets via plug-and-play networks.</p>
                  </div>
                </div>
                <div class="col-xs-2">
                  <div class="avatar">
                    <img src="${request.getContextPath()}/images/avatar-small.jpg" alt="">
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="row">
                <div class="col-xs-2">
                  <div class="avatar">
                    <img src="${request.getContextPath()}/images/avatar-small.jpg" alt="">
                  </div>
                </div>
                <div class="col-xs-10">
                  <div class="chat-bubble chat-bubble-right">
                    <div class="bubble-arrow"></div>
                    <div class="meta-info"><a href="#">Andres Iniesta</a> on Jun 25</div>
                    <p>Collaboratively administrate empowered markets via plug-and-play networks.</p>
                  </div>
                </div>
              </div>
            </li>
          </ul>
          <div class="widget-foot">
            <div class="create-chat-message-w">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Your message here...">
                <span class="input-group-btn">
                  <button class="btn btn-primary" type="button">Send</button>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>