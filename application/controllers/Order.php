<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Order extends My_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Common_model', 'cm');
	}

	public function index()
	{
		$data = $this->cm->retriveResult('orders');
		$status = 0;

		if ($data) {
			$status = 1;

			// Decode 'items' for each order
			foreach ($data as &$order) {
				$order['items'] = json_decode(base64_decode($order['items']), true);
			}
		}

		$this->sendJSON($data, $status);
	}


	public function create()
	{
		$data = json_decode(file_get_contents("php://input"), true);
		$items = base64_encode(json_encode($data['items']));
		$data['items'] = $items;

		if ($data) {
			if ($data['first_name'] == "") {
				$message = array('message' => 'name is required');
				$this->sendJSON($message, 0);
			} else {
				if ($data['order_id'] == "") {
					unset($data['order_id']);
					$rs = $this->cm->insert('orders', $data);
				} else {
					$condition['order_id'] = $data['order_id'];
					unset($data['items']);
					$rs = $this->cm->update('orders', $data, $condition);
				}
				if ($rs) {
					$message = array('message' => 'Data has been saved.');
					$status = 1;
				} else {
					$message = array('message' => 'Data has not been saved. Please try again');
					$status = 0;
				}
			}
		} else {
			$message = array('message' => 'You have to provide data to save');
			$status = 0;
		}
		$this->sendJSON($message, $status);
	}

	public function delete($id)
	{
		$data['order_id'] = $id;
		if ($this->cm->delete('orders', $data)) {
			$message = array('message' => 'Data deleted');
			$status = 1;
		} else {
			$message = array('message' => 'Please try again');
			$status = 0;
		}
		$this->sendJSON($message, $status);
	}
}