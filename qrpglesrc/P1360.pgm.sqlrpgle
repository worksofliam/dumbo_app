**free

ctl-opt dftactgrp(*no);

dcl-pi P1360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1267.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P1360';
dsply theCharVar;
callp localProc();
P1267();
P82();
P1115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1360 in the procedure';
end-proc;