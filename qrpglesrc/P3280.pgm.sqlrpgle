**free

ctl-opt dftactgrp(*no);

dcl-pi P3280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P3001.rpgleinc'
/copy 'qrpgleref/P1744.rpgleinc'

dcl-ds theTable extname('T1656') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1656 LIMIT 1;

theCharVar = 'Hello from P3280';
dsply theCharVar;
callp localProc();
P880();
P3001();
P1744();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3280 in the procedure';
end-proc;