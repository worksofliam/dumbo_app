**free

ctl-opt dftactgrp(*no);

dcl-pi P3100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P1440.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P3100';
dsply theCharVar;
callp localProc();
P2111();
P1440();
P783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3100 in the procedure';
end-proc;