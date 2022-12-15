**free

ctl-opt dftactgrp(*no);

dcl-pi P1369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P1167.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P1369';
dsply theCharVar;
callp localProc();
P899();
P1167();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1369 in the procedure';
end-proc;