**free

ctl-opt dftactgrp(*no);

dcl-pi P1193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds theTable extname('T218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T218 LIMIT 1;

theCharVar = 'Hello from P1193';
dsply theCharVar;
callp localProc();
P496();
P1138();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1193 in the procedure';
end-proc;