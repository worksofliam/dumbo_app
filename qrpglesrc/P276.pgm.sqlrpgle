**free

ctl-opt dftactgrp(*no);

dcl-pi P276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T481 LIMIT 1;

theCharVar = 'Hello from P276';
dsply theCharVar;
callp localProc();
P157();
P97();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P276 in the procedure';
end-proc;