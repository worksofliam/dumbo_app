**free

ctl-opt dftactgrp(*no);

dcl-pi P3042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1867.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P1722.rpgleinc'

dcl-ds theTable extname('T1135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1135 LIMIT 1;

theCharVar = 'Hello from P3042';
dsply theCharVar;
callp localProc();
P1867();
P548();
P1722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3042 in the procedure';
end-proc;