**free

ctl-opt dftactgrp(*no);

dcl-pi P462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T562 LIMIT 1;

theCharVar = 'Hello from P462';
dsply theCharVar;
callp localProc();
P442();
P425();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P462 in the procedure';
end-proc;