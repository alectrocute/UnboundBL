<?php
namespace OPNsense\opnblock\Api;

use \OPNsense\Base\ApiControllerBase;
use \OPNsense\Core\Backend;

class ServiceController extends ApiControllerBase
{
    /**
     * reconfigure opnblock
     */
    public function reloadAction()
    {
        if ($this->request->isPost()) {
            $backend = new Backend();
                $backend->configdRun('template reload OPNsense/opnblock');
            return array("message" => "Configuration saved! Make sure you click the 'Reload Lists' button and restart your Unbound server.");
        }
        return array("message" => "Something went wrong...");
    }

    /**
     * test opnblock
     */
    public function testAction()
    {
        if ($this->request->isPost()) {
            $backend = new Backend();
            $bckresult = $backend->configdRun("opnblock refresh");
            if ($bckresult !== null) {
                return array("message" => "OPNblock's lists have been updated! Please restart your Unbound DNS server.");
            }
        }
        return array("message" => "Something went wrong...");
    }
}
