**free

ctl-opt dftactgrp(*no);

dcl-pi P868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P868';
dsply theCharVar;
callp localProc();
P224();
P593();
P499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P868 in the procedure';
end-proc;