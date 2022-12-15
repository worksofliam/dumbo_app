**free

ctl-opt dftactgrp(*no);

dcl-pi P300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P300';
dsply theCharVar;
callp localProc();
P17();
P104();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P300 in the procedure';
end-proc;