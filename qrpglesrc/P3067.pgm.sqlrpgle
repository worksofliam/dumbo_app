**free

ctl-opt dftactgrp(*no);

dcl-pi P3067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P1997.rpgleinc'
/copy 'qrpgleref/P1724.rpgleinc'

dcl-ds theTable extname('T517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T517 LIMIT 1;

theCharVar = 'Hello from P3067';
dsply theCharVar;
callp localProc();
P321();
P1997();
P1724();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3067 in the procedure';
end-proc;