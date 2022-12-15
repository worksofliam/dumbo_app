**free

ctl-opt dftactgrp(*no);

dcl-pi P1572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P860.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P1572';
dsply theCharVar;
callp localProc();
P1292();
P860();
P1115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1572 in the procedure';
end-proc;