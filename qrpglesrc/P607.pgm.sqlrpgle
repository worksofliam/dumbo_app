**free

ctl-opt dftactgrp(*no);

dcl-pi P607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P607';
dsply theCharVar;
callp localProc();
P150();
P321();
P304();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P607 in the procedure';
end-proc;