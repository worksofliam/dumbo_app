**free

ctl-opt dftactgrp(*no);

dcl-pi P3960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'

dcl-ds theTable extname('T1295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1295 LIMIT 1;

theCharVar = 'Hello from P3960';
dsply theCharVar;
callp localProc();
P1005();
P593();
P557();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3960 in the procedure';
end-proc;