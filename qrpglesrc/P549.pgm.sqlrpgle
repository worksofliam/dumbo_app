**free

ctl-opt dftactgrp(*no);

dcl-pi P549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds theTable extname('T978') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T978 LIMIT 1;

theCharVar = 'Hello from P549';
dsply theCharVar;
callp localProc();
P474();
P256();
P415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P549 in the procedure';
end-proc;