**free

ctl-opt dftactgrp(*no);

dcl-pi P1960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'

dcl-ds theTable extname('T501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T501 LIMIT 1;

theCharVar = 'Hello from P1960';
dsply theCharVar;
callp localProc();
P569();
P1428();
P1342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1960 in the procedure';
end-proc;