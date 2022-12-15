**free

ctl-opt dftactgrp(*no);

dcl-pi P288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P288';
dsply theCharVar;
callp localProc();
P155();
P185();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P288 in the procedure';
end-proc;