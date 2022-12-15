**free

ctl-opt dftactgrp(*no);

dcl-pi P462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P462';
dsply theCharVar;
callp localProc();
P386();
P61();
P157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P462 in the procedure';
end-proc;