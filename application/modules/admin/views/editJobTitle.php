<div id="commonModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            
            <form class="form-horizontal" role="form" id="editFormAjax" method="post" action="<?php echo base_url('admin/users/updateJobTitle') ?>">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Update Job Title</h4>
                </div>
                <div class="modal-body">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-md-12" >
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Title</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="jobTitleName" id="jobTitleName" placeholder="Job Title" maxlength="100" value="<?php echo display_placeholder_text($results->jobTitleName); ?>" />
                                        <input type="hidden" name="jobTitleId" id="jobTitleId" value="<?php echo $results->jobTitleId; ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Job Title For</label>
                                    <div class="col-md-9">
                                        <select class="form-control" name="userType">
                                            <option value=""></option>

                                            <?php $user_type = user_types(); if(!empty($user_type)){foreach($user_type as $key => $val){?>
                                            <option value="<?php echo $val;?>" <?php if(!empty($results->userType == $val))echo 'selected';?>><?php echo $key;?></option>
                                            <?php }}?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                      
                            <div class="space-22"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" id="submit" class="<?php echo THEME_BUTTON;?>" >Update</button>
                </div>
            </form>
        </div> <!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
