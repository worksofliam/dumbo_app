**free

ctl-opt dftactgrp(*no);

dcl-pi P503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P503';
dsply theCharVar;
callp localProc();
P296();
P445();
P471();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P503 in the procedure';
end-proc;