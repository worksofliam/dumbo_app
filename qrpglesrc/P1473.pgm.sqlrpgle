**free

ctl-opt dftactgrp(*no);

dcl-pi P1473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P1360.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P1473';
dsply theCharVar;
callp localProc();
P1231();
P734();
P1360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1473 in the procedure';
end-proc;