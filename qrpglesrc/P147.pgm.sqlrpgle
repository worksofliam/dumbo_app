**free

ctl-opt dftactgrp(*no);

dcl-pi P147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

theCharVar = 'Hello from P147';
dsply theCharVar;
P78();
P108();
P60();
return;