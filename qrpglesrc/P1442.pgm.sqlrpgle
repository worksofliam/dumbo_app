**free

ctl-opt dftactgrp(*no);

dcl-pi P1442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P1442';
dsply theCharVar;
callp localProc();
P684();
P785();
P407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1442 in the procedure';
end-proc;