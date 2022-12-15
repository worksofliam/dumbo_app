**free

ctl-opt dftactgrp(*no);

dcl-pi P4440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P1195.rpgleinc'

dcl-ds theTable extname('T1615') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1615 LIMIT 1;

theCharVar = 'Hello from P4440';
dsply theCharVar;
callp localProc();
P1547();
P1519();
P1195();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4440 in the procedure';
end-proc;