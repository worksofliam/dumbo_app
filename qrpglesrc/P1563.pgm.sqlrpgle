**free

ctl-opt dftactgrp(*no);

dcl-pi P1563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P1528.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P1563';
dsply theCharVar;
callp localProc();
P552();
P1528();
P285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1563 in the procedure';
end-proc;