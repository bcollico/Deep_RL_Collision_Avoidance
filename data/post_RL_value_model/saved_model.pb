��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02unknown8��
w
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namelayer1/kernel
p
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*
_output_shapes
:	�*
dtype0
o
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer1/bias
h
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes	
:�*
dtype0
w
layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*
shared_namelayer2/kernel
p
!layer2/kernel/Read/ReadVariableOpReadVariableOplayer2/kernel*
_output_shapes
:	�d*
dtype0
n
layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namelayer2/bias
g
layer2/bias/Read/ReadVariableOpReadVariableOplayer2/bias*
_output_shapes
:d*
dtype0
v
layer3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_namelayer3/kernel
o
!layer3/kernel/Read/ReadVariableOpReadVariableOplayer3/kernel*
_output_shapes

:dd*
dtype0
n
layer3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namelayer3/bias
g
layer3/bias/Read/ReadVariableOpReadVariableOplayer3/bias*
_output_shapes
:d*
dtype0
�
final_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*#
shared_namefinal_layer/kernel
y
&final_layer/kernel/Read/ReadVariableOpReadVariableOpfinal_layer/kernel*
_output_shapes

:d*
dtype0
x
final_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namefinal_layer/bias
q
$final_layer/bias/Read/ReadVariableOpReadVariableOpfinal_layer/bias*
_output_shapes
:*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
SGD/layer1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameSGD/layer1/kernel/momentum
�
.SGD/layer1/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/layer1/kernel/momentum*
_output_shapes
:	�*
dtype0
�
SGD/layer1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameSGD/layer1/bias/momentum
�
,SGD/layer1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/layer1/bias/momentum*
_output_shapes	
:�*
dtype0
�
SGD/layer2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*+
shared_nameSGD/layer2/kernel/momentum
�
.SGD/layer2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/layer2/kernel/momentum*
_output_shapes
:	�d*
dtype0
�
SGD/layer2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_nameSGD/layer2/bias/momentum
�
,SGD/layer2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/layer2/bias/momentum*
_output_shapes
:d*
dtype0
�
SGD/layer3/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*+
shared_nameSGD/layer3/kernel/momentum
�
.SGD/layer3/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/layer3/kernel/momentum*
_output_shapes

:dd*
dtype0
�
SGD/layer3/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_nameSGD/layer3/bias/momentum
�
,SGD/layer3/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/layer3/bias/momentum*
_output_shapes
:d*
dtype0
�
SGD/final_layer/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!SGD/final_layer/kernel/momentum
�
3SGD/final_layer/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/final_layer/kernel/momentum*
_output_shapes

:d*
dtype0
�
SGD/final_layer/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameSGD/final_layer/bias/momentum
�
1SGD/final_layer/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/final_layer/bias/momentum*
_output_shapes
:*
dtype0

NoOpNoOp
�%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�$
value�$B�$ B�$
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�
	(decay
)learning_rate
*momentum
+itermomentumJmomentumKmomentumLmomentumMmomentumNmomentumO!momentumP"momentumQ
 
 
8
0
1
2
3
4
5
!6
"7
8
0
1
2
3
4
5
!6
"7
 
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
	trainable_variables

regularization_losses
YW
VARIABLE_VALUElayer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
YW
VARIABLE_VALUElayer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
YW
VARIABLE_VALUElayer3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
^\
VARIABLE_VALUEfinal_layer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEfinal_layer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
$	variables
%trainable_variables
&regularization_losses
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

E0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ftotal
	Gcount
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

H	variables
��
VARIABLE_VALUESGD/layer1/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/layer1/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/layer2/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/layer2/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/layer3/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/layer3/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/final_layer/kernel/momentumYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/final_layer/bias/momentumWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1layer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/kernellayer3/biasfinal_layer/kernelfinal_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_22888940
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer2/kernel/Read/ReadVariableOplayer2/bias/Read/ReadVariableOp!layer3/kernel/Read/ReadVariableOplayer3/bias/Read/ReadVariableOp&final_layer/kernel/Read/ReadVariableOp$final_layer/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp.SGD/layer1/kernel/momentum/Read/ReadVariableOp,SGD/layer1/bias/momentum/Read/ReadVariableOp.SGD/layer2/kernel/momentum/Read/ReadVariableOp,SGD/layer2/bias/momentum/Read/ReadVariableOp.SGD/layer3/kernel/momentum/Read/ReadVariableOp,SGD/layer3/bias/momentum/Read/ReadVariableOp3SGD/final_layer/kernel/momentum/Read/ReadVariableOp1SGD/final_layer/bias/momentum/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_22889292
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/kernellayer3/biasfinal_layer/kernelfinal_layer/biasdecaylearning_ratemomentumSGD/itertotalcountSGD/layer1/kernel/momentumSGD/layer1/bias/momentumSGD/layer2/kernel/momentumSGD/layer2/bias/momentumSGD/layer3/kernel/momentumSGD/layer3/bias/momentumSGD/final_layer/kernel/momentumSGD/final_layer/bias/momentum*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_22889368��
�'
�
H__inference_sequential_layer_call_and_return_conditional_losses_22888859
input_1"
layer1_22888823:	�
layer1_22888825:	�"
layer2_22888828:	�d
layer2_22888830:d!
layer3_22888833:dd
layer3_22888835:d&
final_layer_22888838:d"
final_layer_22888840:
identity��#final_layer/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/StatefulPartitionedCall�layer2/StatefulPartitionedCall�layer3/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_1layer1_22888823layer1_22888825*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_22888572�
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_22888828layer2_22888830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer2_layer_call_and_return_conditional_losses_22888589�
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_22888833layer3_22888835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer3_layer_call_and_return_conditional_losses_22888606�
#final_layer/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0final_layer_22888838final_layer_22888840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    z
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_layer_22888838*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: }
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpfinal_layer_22888838*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: {
IdentityIdentity,final_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^final_layer/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2J
#final_layer/StatefulPartitionedCall#final_layer/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
-__inference_sequential_layer_call_fn_22888982

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�d
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_22888780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
H__inference_sequential_layer_call_and_return_conditional_losses_22888659

inputs"
layer1_22888573:	�
layer1_22888575:	�"
layer2_22888590:	�d
layer2_22888592:d!
layer3_22888607:dd
layer3_22888609:d&
final_layer_22888638:d"
final_layer_22888640:
identity��#final_layer/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/StatefulPartitionedCall�layer2/StatefulPartitionedCall�layer3/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_22888573layer1_22888575*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_22888572�
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_22888590layer2_22888592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer2_layer_call_and_return_conditional_losses_22888589�
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_22888607layer3_22888609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer3_layer_call_and_return_conditional_losses_22888606�
#final_layer/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0final_layer_22888638final_layer_22888640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    z
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_layer_22888638*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: }
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpfinal_layer_22888638*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: {
IdentityIdentity,final_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^final_layer/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2J
#final_layer/StatefulPartitionedCall#final_layer/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
H__inference_sequential_layer_call_and_return_conditional_losses_22889074

inputs8
%layer1_matmul_readvariableop_resource:	�5
&layer1_biasadd_readvariableop_resource:	�8
%layer2_matmul_readvariableop_resource:	�d4
&layer2_biasadd_readvariableop_resource:d7
%layer3_matmul_readvariableop_resource:dd4
&layer3_biasadd_readvariableop_resource:d<
*final_layer_matmul_readvariableop_resource:d9
+final_layer_biasadd_readvariableop_resource:
identity��"final_layer/BiasAdd/ReadVariableOp�!final_layer/MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/BiasAdd/ReadVariableOp�layer1/MatMul/ReadVariableOp�layer2/BiasAdd/ReadVariableOp�layer2/MatMul/ReadVariableOp�layer3/BiasAdd/ReadVariableOp�layer3/MatMul/ReadVariableOp�
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0x
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer2/MatMul/ReadVariableOpReadVariableOp%layer2_matmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
layer2/MatMulMatMullayer1/Relu:activations:0$layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer2/BiasAddBiasAddlayer2/MatMul:product:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d^
layer2/ReluRelulayer2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
layer3/MatMul/ReadVariableOpReadVariableOp%layer3_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer3/MatMulMatMullayer2/Relu:activations:0$layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
layer3/BiasAdd/ReadVariableOpReadVariableOp&layer3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer3/BiasAddBiasAddlayer3/MatMul:product:0%layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d^
layer3/ReluRelulayer3/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
!final_layer/MatMul/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
final_layer/MatMulMatMullayer3/Relu:activations:0)final_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"final_layer/BiasAdd/ReadVariableOpReadVariableOp+final_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
final_layer/BiasAddBiasAddfinal_layer/MatMul:product:0*final_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityfinal_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^final_layer/BiasAdd/ReadVariableOp"^final_layer/MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp^layer2/BiasAdd/ReadVariableOp^layer2/MatMul/ReadVariableOp^layer3/BiasAdd/ReadVariableOp^layer3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2H
"final_layer/BiasAdd/ReadVariableOp"final_layer/BiasAdd/ReadVariableOp2F
!final_layer/MatMul/ReadVariableOp!final_layer/MatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2<
layer2/MatMul/ReadVariableOplayer2/MatMul/ReadVariableOp2>
layer3/BiasAdd/ReadVariableOplayer3/BiasAdd/ReadVariableOp2<
layer3/MatMul/ReadVariableOplayer3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_22889203@
.kernel_regularizer_abs_readvariableop_resource:d
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
�

�
D__inference_layer3_layer_call_and_return_conditional_losses_22889134

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
&__inference_signature_wrapper_22888940
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�d
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_22888554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_layer3_layer_call_fn_22889123

inputs
unknown:dd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer3_layer_call_and_return_conditional_losses_22888606o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
.__inference_final_layer_layer_call_fn_22889158

inputs
unknown:d
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
I__inference_final_layer_layer_call_and_return_conditional_losses_22889183

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
-__inference_sequential_layer_call_fn_22888820
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�d
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_22888780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_layer2_layer_call_fn_22889103

inputs
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer2_layer_call_and_return_conditional_losses_22888589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_layer1_layer_call_and_return_conditional_losses_22889094

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_layer1_layer_call_fn_22889083

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_22888572p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_layer_call_fn_22888961

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�d
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_22888659o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_layer3_layer_call_and_return_conditional_losses_22888606

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�'
�
H__inference_sequential_layer_call_and_return_conditional_losses_22888898
input_1"
layer1_22888862:	�
layer1_22888864:	�"
layer2_22888867:	�d
layer2_22888869:d!
layer3_22888872:dd
layer3_22888874:d&
final_layer_22888877:d"
final_layer_22888879:
identity��#final_layer/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/StatefulPartitionedCall�layer2/StatefulPartitionedCall�layer3/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_1layer1_22888862layer1_22888864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_22888572�
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_22888867layer2_22888869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer2_layer_call_and_return_conditional_losses_22888589�
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_22888872layer3_22888874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer3_layer_call_and_return_conditional_losses_22888606�
#final_layer/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0final_layer_22888877final_layer_22888879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    z
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_layer_22888877*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: }
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpfinal_layer_22888877*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: {
IdentityIdentity,final_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^final_layer/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2J
#final_layer/StatefulPartitionedCall#final_layer/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�'
�
H__inference_sequential_layer_call_and_return_conditional_losses_22888780

inputs"
layer1_22888744:	�
layer1_22888746:	�"
layer2_22888749:	�d
layer2_22888751:d!
layer3_22888754:dd
layer3_22888756:d&
final_layer_22888759:d"
final_layer_22888761:
identity��#final_layer/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/StatefulPartitionedCall�layer2/StatefulPartitionedCall�layer3/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_22888744layer1_22888746*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_22888572�
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_22888749layer2_22888751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer2_layer_call_and_return_conditional_losses_22888589�
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_22888754layer3_22888756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_layer3_layer_call_and_return_conditional_losses_22888606�
#final_layer/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0final_layer_22888759final_layer_22888761*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    z
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_layer_22888759*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: }
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpfinal_layer_22888759*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: {
IdentityIdentity,final_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^final_layer/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2J
#final_layer/StatefulPartitionedCall#final_layer/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_final_layer_layer_call_and_return_conditional_losses_22888637

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�4
�	
!__inference__traced_save_22889292
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer2_kernel_read_readvariableop*
&savev2_layer2_bias_read_readvariableop,
(savev2_layer3_kernel_read_readvariableop*
&savev2_layer3_bias_read_readvariableop1
-savev2_final_layer_kernel_read_readvariableop/
+savev2_final_layer_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop9
5savev2_sgd_layer1_kernel_momentum_read_readvariableop7
3savev2_sgd_layer1_bias_momentum_read_readvariableop9
5savev2_sgd_layer2_kernel_momentum_read_readvariableop7
3savev2_sgd_layer2_bias_momentum_read_readvariableop9
5savev2_sgd_layer3_kernel_momentum_read_readvariableop7
3savev2_sgd_layer3_bias_momentum_read_readvariableop>
:savev2_sgd_final_layer_kernel_momentum_read_readvariableop<
8savev2_sgd_final_layer_bias_momentum_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer2_kernel_read_readvariableop&savev2_layer2_bias_read_readvariableop(savev2_layer3_kernel_read_readvariableop&savev2_layer3_bias_read_readvariableop-savev2_final_layer_kernel_read_readvariableop+savev2_final_layer_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop5savev2_sgd_layer1_kernel_momentum_read_readvariableop3savev2_sgd_layer1_bias_momentum_read_readvariableop5savev2_sgd_layer2_kernel_momentum_read_readvariableop3savev2_sgd_layer2_bias_momentum_read_readvariableop5savev2_sgd_layer3_kernel_momentum_read_readvariableop3savev2_sgd_layer3_bias_momentum_read_readvariableop:savev2_sgd_final_layer_kernel_momentum_read_readvariableop8savev2_sgd_final_layer_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:�:	�d:d:dd:d:d:: : : : : : :	�:�:	�d:d:dd:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: 
�	
�
-__inference_sequential_layer_call_fn_22888678
input_1
unknown:	�
	unknown_0:	�
	unknown_1:	�d
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_22888659o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
D__inference_layer1_layer_call_and_return_conditional_losses_22888572

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_layer2_layer_call_and_return_conditional_losses_22888589

inputs1
matmul_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
#__inference__wrapped_model_22888554
input_1C
0sequential_layer1_matmul_readvariableop_resource:	�@
1sequential_layer1_biasadd_readvariableop_resource:	�C
0sequential_layer2_matmul_readvariableop_resource:	�d?
1sequential_layer2_biasadd_readvariableop_resource:dB
0sequential_layer3_matmul_readvariableop_resource:dd?
1sequential_layer3_biasadd_readvariableop_resource:dG
5sequential_final_layer_matmul_readvariableop_resource:dD
6sequential_final_layer_biasadd_readvariableop_resource:
identity��-sequential/final_layer/BiasAdd/ReadVariableOp�,sequential/final_layer/MatMul/ReadVariableOp�(sequential/layer1/BiasAdd/ReadVariableOp�'sequential/layer1/MatMul/ReadVariableOp�(sequential/layer2/BiasAdd/ReadVariableOp�'sequential/layer2/MatMul/ReadVariableOp�(sequential/layer3/BiasAdd/ReadVariableOp�'sequential/layer3/MatMul/ReadVariableOp�
'sequential/layer1/MatMul/ReadVariableOpReadVariableOp0sequential_layer1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential/layer1/MatMulMatMulinput_1/sequential/layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(sequential/layer1/BiasAdd/ReadVariableOpReadVariableOp1sequential_layer1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/layer1/BiasAddBiasAdd"sequential/layer1/MatMul:product:00sequential/layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
sequential/layer1/ReluRelu"sequential/layer1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'sequential/layer2/MatMul/ReadVariableOpReadVariableOp0sequential_layer2_matmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
sequential/layer2/MatMulMatMul$sequential/layer1/Relu:activations:0/sequential/layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
(sequential/layer2/BiasAdd/ReadVariableOpReadVariableOp1sequential_layer2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
sequential/layer2/BiasAddBiasAdd"sequential/layer2/MatMul:product:00sequential/layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dt
sequential/layer2/ReluRelu"sequential/layer2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
'sequential/layer3/MatMul/ReadVariableOpReadVariableOp0sequential_layer3_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
sequential/layer3/MatMulMatMul$sequential/layer2/Relu:activations:0/sequential/layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
(sequential/layer3/BiasAdd/ReadVariableOpReadVariableOp1sequential_layer3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
sequential/layer3/BiasAddBiasAdd"sequential/layer3/MatMul:product:00sequential/layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dt
sequential/layer3/ReluRelu"sequential/layer3/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
,sequential/final_layer/MatMul/ReadVariableOpReadVariableOp5sequential_final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
sequential/final_layer/MatMulMatMul$sequential/layer3/Relu:activations:04sequential/final_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential/final_layer/BiasAdd/ReadVariableOpReadVariableOp6sequential_final_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/final_layer/BiasAddBiasAdd'sequential/final_layer/MatMul:product:05sequential/final_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential/final_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential/final_layer/BiasAdd/ReadVariableOp-^sequential/final_layer/MatMul/ReadVariableOp)^sequential/layer1/BiasAdd/ReadVariableOp(^sequential/layer1/MatMul/ReadVariableOp)^sequential/layer2/BiasAdd/ReadVariableOp(^sequential/layer2/MatMul/ReadVariableOp)^sequential/layer3/BiasAdd/ReadVariableOp(^sequential/layer3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2^
-sequential/final_layer/BiasAdd/ReadVariableOp-sequential/final_layer/BiasAdd/ReadVariableOp2\
,sequential/final_layer/MatMul/ReadVariableOp,sequential/final_layer/MatMul/ReadVariableOp2T
(sequential/layer1/BiasAdd/ReadVariableOp(sequential/layer1/BiasAdd/ReadVariableOp2R
'sequential/layer1/MatMul/ReadVariableOp'sequential/layer1/MatMul/ReadVariableOp2T
(sequential/layer2/BiasAdd/ReadVariableOp(sequential/layer2/BiasAdd/ReadVariableOp2R
'sequential/layer2/MatMul/ReadVariableOp'sequential/layer2/MatMul/ReadVariableOp2T
(sequential/layer3/BiasAdd/ReadVariableOp(sequential/layer3/BiasAdd/ReadVariableOp2R
'sequential/layer3/MatMul/ReadVariableOp'sequential/layer3/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�4
�
H__inference_sequential_layer_call_and_return_conditional_losses_22889028

inputs8
%layer1_matmul_readvariableop_resource:	�5
&layer1_biasadd_readvariableop_resource:	�8
%layer2_matmul_readvariableop_resource:	�d4
&layer2_biasadd_readvariableop_resource:d7
%layer3_matmul_readvariableop_resource:dd4
&layer3_biasadd_readvariableop_resource:d<
*final_layer_matmul_readvariableop_resource:d9
+final_layer_biasadd_readvariableop_resource:
identity��"final_layer/BiasAdd/ReadVariableOp�!final_layer/MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�layer1/BiasAdd/ReadVariableOp�layer1/MatMul/ReadVariableOp�layer2/BiasAdd/ReadVariableOp�layer2/MatMul/ReadVariableOp�layer3/BiasAdd/ReadVariableOp�layer3/MatMul/ReadVariableOp�
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0x
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer2/MatMul/ReadVariableOpReadVariableOp%layer2_matmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
layer2/MatMulMatMullayer1/Relu:activations:0$layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer2/BiasAddBiasAddlayer2/MatMul:product:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d^
layer2/ReluRelulayer2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
layer3/MatMul/ReadVariableOpReadVariableOp%layer3_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer3/MatMulMatMullayer2/Relu:activations:0$layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
layer3/BiasAdd/ReadVariableOpReadVariableOp&layer3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer3/BiasAddBiasAddlayer3/MatMul:product:0%layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d^
layer3/ReluRelulayer3/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
!final_layer/MatMul/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
final_layer/MatMulMatMullayer3/Relu:activations:0)final_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"final_layer/BiasAdd/ReadVariableOpReadVariableOp+final_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
final_layer/BiasAddBiasAddfinal_layer/MatMul:product:0*final_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0u
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp*final_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0~
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dk
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityfinal_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^final_layer/BiasAdd/ReadVariableOp"^final_layer/MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp^layer2/BiasAdd/ReadVariableOp^layer2/MatMul/ReadVariableOp^layer3/BiasAdd/ReadVariableOp^layer3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2H
"final_layer/BiasAdd/ReadVariableOp"final_layer/BiasAdd/ReadVariableOp2F
!final_layer/MatMul/ReadVariableOp!final_layer/MatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2<
layer2/MatMul/ReadVariableOplayer2/MatMul/ReadVariableOp2>
layer3/BiasAdd/ReadVariableOplayer3/BiasAdd/ReadVariableOp2<
layer3/MatMul/ReadVariableOplayer3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_layer2_layer_call_and_return_conditional_losses_22889114

inputs1
matmul_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�Z
�
$__inference__traced_restore_22889368
file_prefix1
assignvariableop_layer1_kernel:	�-
assignvariableop_1_layer1_bias:	�3
 assignvariableop_2_layer2_kernel:	�d,
assignvariableop_3_layer2_bias:d2
 assignvariableop_4_layer3_kernel:dd,
assignvariableop_5_layer3_bias:d7
%assignvariableop_6_final_layer_kernel:d1
#assignvariableop_7_final_layer_bias:"
assignvariableop_8_decay: *
 assignvariableop_9_learning_rate: &
assignvariableop_10_momentum: &
assignvariableop_11_sgd_iter:	 #
assignvariableop_12_total: #
assignvariableop_13_count: A
.assignvariableop_14_sgd_layer1_kernel_momentum:	�;
,assignvariableop_15_sgd_layer1_bias_momentum:	�A
.assignvariableop_16_sgd_layer2_kernel_momentum:	�d:
,assignvariableop_17_sgd_layer2_bias_momentum:d@
.assignvariableop_18_sgd_layer3_kernel_momentum:dd:
,assignvariableop_19_sgd_layer3_bias_momentum:dE
3assignvariableop_20_sgd_final_layer_kernel_momentum:d?
1assignvariableop_21_sgd_final_layer_bias_momentum:
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_final_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_final_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_momentumIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp.assignvariableop_14_sgd_layer1_kernel_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_sgd_layer1_bias_momentumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_sgd_layer2_kernel_momentumIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_sgd_layer2_bias_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_sgd_layer3_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_sgd_layer3_bias_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp3assignvariableop_20_sgd_final_layer_kernel_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp1assignvariableop_21_sgd_final_layer_bias_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������?
final_layer0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�^
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_default_save_signature"
_tf_keras_sequential
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	(decay
)learning_rate
*momentum
+itermomentumJmomentumKmomentumLmomentumMmomentumNmomentumO!momentumP"momentumQ"
	optimizer
,
]serving_default"
signature_map
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
!6
"7"
trackable_list_wrapper
X
0
1
2
3
4
5
!6
"7"
trackable_list_wrapper
'
^0"
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
	trainable_variables

regularization_losses
R__call__
T_default_save_signature
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
 :	�2layer1/kernel
:�2layer1/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
 :	�d2layer2/kernel
:d2layer2/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
:dd2layer3/kernel
:d2layer3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
$:"d2final_layer/kernel
:2final_layer/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
'
^0"
trackable_list_wrapper
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
$	variables
%trainable_variables
&regularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
^0"
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Ftotal
	Gcount
H	variables
I	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
+:)	�2SGD/layer1/kernel/momentum
%:#�2SGD/layer1/bias/momentum
+:)	�d2SGD/layer2/kernel/momentum
$:"d2SGD/layer2/bias/momentum
*:(dd2SGD/layer3/kernel/momentum
$:"d2SGD/layer3/bias/momentum
/:-d2SGD/final_layer/kernel/momentum
):'2SGD/final_layer/bias/momentum
�2�
-__inference_sequential_layer_call_fn_22888678
-__inference_sequential_layer_call_fn_22888961
-__inference_sequential_layer_call_fn_22888982
-__inference_sequential_layer_call_fn_22888820�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_layer_call_and_return_conditional_losses_22889028
H__inference_sequential_layer_call_and_return_conditional_losses_22889074
H__inference_sequential_layer_call_and_return_conditional_losses_22888859
H__inference_sequential_layer_call_and_return_conditional_losses_22888898�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_22888554input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_layer1_layer_call_fn_22889083�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_layer1_layer_call_and_return_conditional_losses_22889094�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_layer2_layer_call_fn_22889103�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_layer2_layer_call_and_return_conditional_losses_22889114�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_layer3_layer_call_fn_22889123�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_layer3_layer_call_and_return_conditional_losses_22889134�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_final_layer_layer_call_fn_22889158�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_final_layer_layer_call_and_return_conditional_losses_22889183�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_22888940input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_22889203�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� �
#__inference__wrapped_model_22888554w!"0�-
&�#
!�
input_1���������
� "9�6
4
final_layer%�"
final_layer����������
I__inference_final_layer_layer_call_and_return_conditional_losses_22889183\!"/�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� �
.__inference_final_layer_layer_call_fn_22889158O!"/�,
%�"
 �
inputs���������d
� "�����������
D__inference_layer1_layer_call_and_return_conditional_losses_22889094]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� }
)__inference_layer1_layer_call_fn_22889083P/�,
%�"
 �
inputs���������
� "������������
D__inference_layer2_layer_call_and_return_conditional_losses_22889114]0�-
&�#
!�
inputs����������
� "%�"
�
0���������d
� }
)__inference_layer2_layer_call_fn_22889103P0�-
&�#
!�
inputs����������
� "����������d�
D__inference_layer3_layer_call_and_return_conditional_losses_22889134\/�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� |
)__inference_layer3_layer_call_fn_22889123O/�,
%�"
 �
inputs���������d
� "����������d=
__inference_loss_fn_0_22889203!�

� 
� "� �
H__inference_sequential_layer_call_and_return_conditional_losses_22888859k!"8�5
.�+
!�
input_1���������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_22888898k!"8�5
.�+
!�
input_1���������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_22889028j!"7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_22889074j!"7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
-__inference_sequential_layer_call_fn_22888678^!"8�5
.�+
!�
input_1���������
p 

 
� "�����������
-__inference_sequential_layer_call_fn_22888820^!"8�5
.�+
!�
input_1���������
p

 
� "�����������
-__inference_sequential_layer_call_fn_22888961]!"7�4
-�*
 �
inputs���������
p 

 
� "�����������
-__inference_sequential_layer_call_fn_22888982]!"7�4
-�*
 �
inputs���������
p

 
� "�����������
&__inference_signature_wrapper_22888940�!";�8
� 
1�.
,
input_1!�
input_1���������"9�6
4
final_layer%�"
final_layer���������