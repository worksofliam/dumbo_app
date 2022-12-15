**free

ctl-opt dftactgrp(*no);

dcl-pi P999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P999';
dsply theCharVar;
callp localProc();
P777();
P429();
P783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P999 in the procedure';
end-proc;