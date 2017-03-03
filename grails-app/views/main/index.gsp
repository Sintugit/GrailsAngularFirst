<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="angular" />
  </head>

  <body >
    <div class="all-wrapper fixed-header left-menu">
      <g:render template="/headerAngular"/>
      <g:render template="/leftNavMenu"/>
      <!--       Main section starts -->
    

      <div class="main-content">


        <ol id="breadcrumbId" class="breadcrumb">
          <li>
            <select  class="form-control chosen-select" 
                     style="width:250px"
                    
                     >
              <option value="">Choose App</option>
              <option value="App1" selected>App1</option>
              <option value="App1">App2</option>
             
            </select>
          </li>

        </ol>
  
      <!--        Template rendering section-->    <div ng-view></div> <!--        Template rendering section ends--> 
       
        <!--        Loader Container starts-->
        <div  ng-show="loadingView">
          <div style="margin-top:25%;margin-left:45%" > <img src="${request.getContextPath()}/images/486.GIF" alt="Loading..."/> </div>
        </div>
        <!--        Loader Container ends--> 
        
      </div>
      <!--       Main section ends --> 

    </div>
  </div>
</div>



</body>
</html>