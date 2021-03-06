import { Component, OnInit, OnDestroy } from '@angular/core';
import { ProductsService } from 'src/app/services/products.service';
import { Product } from 'src/app/products/product.model';
import { OrderService } from 'src/app/services/order.service';
import { AuthService } from 'src/app/services/auth.service';
import * as _ from 'lodash';

@Component({
  selector: 'app-orders-list',
  templateUrl: './orders-list.component.html',
  styleUrls: ['./orders-list.component.css']
})
export class OrdersListComponent implements OnInit {
  cartOrders = [];
  cartTotal: number;
  isAdmin = false;

  constructor(private orderService: OrderService, private authService: AuthService, private productsService: ProductsService) { }

  ngOnInit() {
    this.isAdmin = this.authService.isAdmin();
    if (this.isAdmin) {
      this.getUnApprovedOrders();
    } else {
      this.getOrderDetails();
    }
  }

  getStatus(order) {
    if (order.status === 0) {
      return 'Canceled';
    } else if (order.is_approved === 1) {
      return 'Approved';
    } else if (order.is_approved === 2) {
      return 'Rejected';
    } else if (order.is_approved === 0) {
      return 'Not Approved';
    }
  }

  getUnApprovedOrders() {
    this.orderService.getUnApprovedOrders().subscribe(
      result => {
        this.cartOrders = result;
      }
    );
  }

  getOrderDetails() {
    this.orderService.getOrderList(JSON.parse(localStorage.getItem('user_Data')).id).subscribe(
      result => {
        this.cartOrders = result;
      }
    );
  }

  // tslint:disable-next-line:member-ordering
  cartProducts = [];
  onEdit(order) {
    this.productsService.emptyCart();
    this.orderService.getOrderDetailsById(order.id).subscribe(
      product => {
        this.cartProducts = product;
        product.forEach(element => {
          for (let i = 0; i < element.quantity; i++) {
            this.productsService.addToCart(element);
          }
          this.productsService.setOrderID(order.id);
        });
      },
      err => console.error(err)
    );
  }

  onApprove(order) {
    this.orderService.approveOrder(order.id).subscribe(
      result => {
        alert('Order Approved');
        _.remove(this.cartOrders, order);
      }
    );
  }

  onRejected(order) {
    this.orderService.rejectOrder(order.id).subscribe(
      result => {
        alert('Order Rejected');
        _.remove(this.cartOrders, order);
      }
    );
  }

  onRemove(order) {
    // tslint:disable-next-line:no-debugger
    debugger;
    this.orderService.removeOrder(order.id).subscribe(
      result => {
        alert('Order Removed');
        _.remove(this.cartOrders, order);
      }
    );
  }

  // tslint:disable-next-line:use-life-cycle-interface
  ngOnDestroy() {
  }
}
