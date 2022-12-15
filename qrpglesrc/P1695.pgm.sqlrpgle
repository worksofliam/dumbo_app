**free

ctl-opt dftactgrp(*no);

dcl-pi P1695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1670.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T624') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T624 LIMIT 1;

theCharVar = 'Hello from P1695';
dsply theCharVar;
callp localProc();
P1670();
P1505();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1695 in the procedure';
end-proc;