**free

ctl-opt dftactgrp(*no);

dcl-pi P1172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P722.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P1172';
dsply theCharVar;
callp localProc();
P722();
P679();
P225();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1172 in the procedure';
end-proc;