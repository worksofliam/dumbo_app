**free

ctl-opt dftactgrp(*no);

dcl-pi P373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

theCharVar = 'Hello from P373';
dsply theCharVar;
P17();
P366();
P137();
return;