**free

ctl-opt dftactgrp(*no);

dcl-pi P1468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds theTable extname('T306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T306 LIMIT 1;

theCharVar = 'Hello from P1468';
dsply theCharVar;
callp localProc();
P1416();
P646();
P593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1468 in the procedure';
end-proc;