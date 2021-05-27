/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "max_heap.h"
#include "stack.h"
#include "queue.h"
#include "cs136-trace.h"


// === HELPER STRUCT AND FUNCTIONS ===========================================

// btnode represents a node within a binary tree
struct btnode {
  int priority;
  char *name;
  int children;
  struct btnode *left;
  struct btnode *right;
  int value;
};

// node_create(name, priority, parent) creates a btnode with a given name and
//   priority. The caller must destroy the returned structure.
// effect: allocates heap memory
// time: O(n)
static struct btnode *node_create(const char *name, int priority) {
  assert(name);
  struct btnode *node = malloc(sizeof(struct btnode));
  node->priority = node->value = priority;
  node->name = malloc((strlen(name) + 1));
  assert(node->name);
  strcpy(node->name, name);
  node->children = 0;
  node->left = node->right = NULL;
  return node;
}

// node_destroy(node) frees all resources used by node; node becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates node
// time: O(1)
static void node_destroy(struct btnode *node) {
  assert(node);
  free(node->name);
  free(node);
}

// === MAX HEAP STRUCT AND FUNCTIONS =========================================

// max_heap represents a max heap ADT
struct max_heap {
  struct btnode *root;
};


// heap_create() creates a new max heap. Caller must destroy returned max heap.
// effects: allocates heap memory
// time: O(1)
struct max_heap *heap_create(void) {
  struct max_heap *heap = malloc(sizeof(struct max_heap));
  heap->root = NULL;
  return heap;
}


// heap_insert(heap, name, priority) inserts an item with name and priority into
//   heap. Priority must be unique; otherwise, behaviour is undefined.
// time: O(log n)
void heap_insert(struct max_heap *heap, const char *name, int value) {
  assert(heap);
  assert(name);
  int index = 0; // store number of elements in the tree
  int count = 0; // store number of levels in the tree

  struct btnode *node = node_create(name, value); 
  struct btnode *cur = heap->root;

//===== STEP 1: find location for a node to be inserted ======
  if (heap->root == NULL) {
    heap->root = node;
    heap->root->children += 1;
    return;
  }   

  heap->root->children += 1;
  index = heap->root->children;

  // calculate levels in tree:
  while (index > 0) {
    index /= 2;
    count += 1;      
  }

  // store binary numbers to represent path to adding node:
  bool *binary = malloc(count * sizeof(bool));
  count = 0;
  index = heap->root->children; // return to original value

  // convert the direction of traversal to T or F.
  // left = F, right = T: exclude final level, where we insert:
  while (index > 1) {  
    binary[count] =  ((index % 2) != 0);
    index /= 2;      
    count += 1;
  }

  // stack tracks path to new node from root, using our binary
  // values in binary array:
  struct stack *path = stack_create(sizeof(struct btnode));     
  int i = count - 1;

  // checking with our binary array, at each level, if 0, then
  // traverse left, if 1 then traverse right, until we get to
  // the node where our new node will be added:
  while (i > 0) {
    stack_push(path, cur);
    if (!binary[i]) {   
      cur = cur->left;     
    } 
    else {
      cur = cur->right;
    }   
    i--;
  }

  stack_push(path, cur); // push node where new_node will be
  // added to onto the path stack

  // at above node, we check our binary array at the final level
  // and push onto left or right depending on the value:
  if (!binary[0]) {   
    cur->left = node;      
  } 
  else {  
    cur->right = node;
  }
  stack_push(path, node);
  
//======================= END OF STEP 1 =======================
//=============================================================
//=== STEP 2: push-up new values until total order-property ===

  while (count > 0) {
    struct btnode *cur = stack_pop(path);
    struct btnode *prev = stack_pop(path);

    // if pushing up, switch name and priority while keeping
    // right and left node the same:
    if (cur->priority >= prev->priority) {
      int pri = cur->priority;
      char *name = cur->name;
      cur->priority = prev->priority;
      prev->priority = pri;
      cur->name = prev->name;
      prev->name = name;
      stack_push(path, prev);
    } 
    else {
      break;
    }      
    count -= 1; 
  }
//======================= END OF STEP 2 =======================
  free(binary);
  stack_destroy(path);
}


// heap_remove(heap) removes the root from max heap, i.e., the item with the
//   largest priority value. The function returns the name of the item. Caller
//   must free returned string.
// effects: frees heap memory
// time: O(log n)
char *heap_remove(struct max_heap *heap) {
  assert(heap);
  assert(heap->root);
  
  // check if tree has only 1 node, then invlidate:
  if (heap->root->left == NULL && heap->root->right == NULL) {
    char *ret = heap->root->name;
    heap->root = NULL;
    return ret;
  }
  
  struct btnode *cur = heap->root;
  char *ret = heap->root->name;
  int index = heap->root->children; // number of nodes
  int count = 0; // number of levels

//====== STEP 1: find location where we can remove node ======
  // find number of levels in tree:
  while (index > 0) {
    index /= 2;
    count += 1;      
  }

  index = heap->root->children; // return to original value
  bool *binary = malloc(count * sizeof(bool));
  count = 0;

  // store path in bool array binary, using same method as 
  // insert, where F = left and T = right for each level:
  while (index > 1) {
    binary[count] = (index % 2) != 0;
    index /= 2;      
    count += 1;
  } 

  // using binary array for path, traverse through tree and stop
  // at the correct node:
  int i = count - 1;
  while (i > 0) {
    if (!binary[i]) {   
      cur = cur->left;              
    } 
    else {
      cur = cur->right;
    }   
    i -= 1;
  }
//======================= END OF STEP 1 =======================
//=============================================================
//= STEP 2: swap old root values with values from step 1 node =

  struct btnode *tmp;

  // if T, then we replace the top node as the right node:
  if (binary[0]) { 
    tmp = cur->right;
    cur->right = NULL;      
  } 
  // if F, then we replace the top node as the left node:
  else {  
    tmp = cur->left;
    cur->left = NULL;
  }

  heap->root->priority = tmp->priority; 
  heap->root->name = tmp->name;
  tmp->name = NULL;
  free(tmp);
//======================= END OF STEP 2 =======================  
//=============================================================
//===== STEP 3: push-down root until total order-property =====

  cur = heap->root; // return cur to the new root value to push
  
  while (count > 0) {
    
    // set left and right priority values in case left and right
    // node do not exist, then we don't want to switch root with 
    // NULL:
    int l = cur->priority;
    int r = cur->priority;
    
    int pri = 0; // store priority when switching
    char *name;  // store name when switching

    // if left or right exist, assign to l and r respectively:
    if (cur->right) {
      r = cur->right->priority;
    } 
    if (cur->left) {
      l = cur->left->priority;  
    }

    // if order-property is fulfilled at root, exit:
    // NOTE: priority being equal never happens, so our only
    //       case for this is when left and right are null and our
    //       above conditions do not run:
    if (cur->priority >= l &&
        cur->priority >= r) {
      break;      
    } 
    // if left priority > right priority, and order-property is
    // not fulfilled, switch cur with left and keep traversing
    else if (l > r) {
      name = cur->name;
      pri = cur->priority;
      cur->name = cur->left->name;
      cur->left->name = name;
      cur->priority = cur->left->priority;
      cur->left->priority = pri;
      cur = cur->left;
    } 
    // if right priority > left priority, and order-property is
    // not fulfilled, switch cur with left and keep traversing
    else {
      name = cur->name;
      pri = cur->priority;
      cur->name = cur->right->name;
      cur->right->name = name;
      cur->priority = cur->right->priority;
      cur->right->priority = pri;
      cur = cur->right;
    }
    count -= 1;
  }
//======================= END OF STEP 2 ======================= 
  free(binary);
  heap->root->children -= 1;
  return ret;

}

// queue_destroy(heap) frees all resources used by heap; heap becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void heap_destroy(struct max_heap *heap) {
  assert(heap);
  if (!(heap->root)) {
    free(heap->root);
    free(heap);
    return;
  }
  
  struct queue *remove = queue_create();
  queue_enqueue(remove, heap->root);
  
  while (queue_is_empty(remove) == false) {
    struct btnode *rem = queue_dequeue(remove);
    
    if (rem->right) {
      queue_enqueue(remove, rem->right);
    }
    if (rem->left) {
      queue_enqueue(remove, rem->left);
    } 
    node_destroy(rem);
  }
  queue_destroy(remove);
  free(heap);
}

// === BINARY TREE PRINT FUNCTION ============================================
// === courtesy of user1571409, https://stackoverflow.com/questions/801740 ===
static int heap_print_worker(struct btnode *node, int is_left, int offset, int depth, char s[6][255]) {
  char b[20];
  int width = 6;
  if (!node) return 0;
  sprintf(b, "%s <%02d>", node->name, node->priority);
  int left  = heap_print_worker(node->left,  1, offset, depth + 1, s);
  int right = heap_print_worker(node->right, 0, offset + left + width, depth + 1, s);
  for (int i = 0; i < width; i++) s[depth][offset + left + i] = b[i];
  if (depth && is_left) {
    for (int i = 0; i < width + right; i++) s[depth - 1][offset + left + width/2 + i] = '-';
    s[depth - 1][offset + left + width/2] = '.';
  } else if (depth && !is_left) {
    for (int i = 0; i < left + width; i++) s[depth - 1][offset - width/2 + i] = '-';
    s[depth - 1][offset + left + width/2] = '.';
  }
  return left + width + right;
}

// heap_print(heap) prints the heap to console. This function is for debugging
//   purposes and has limitations regarding the size of the printed heap.
// effects: generates console output
// time: O(n)
void heap_print(struct max_heap *heap) {
  assert(heap);
  char s[6][255];
  for (int i = 0; i < 6; i++) sprintf(s[i], "%80s", " ");
  heap_print_worker(heap->root, 0, 0, 0, s);
  for (int i = 0; i < 6; i++) printf("%s\n", s[i]);
}
// ===========================================================================