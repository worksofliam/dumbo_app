**free

ctl-opt dftactgrp(*no);

dcl-pi P3741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P3603.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P3741';
dsply theCharVar;
callp localProc();
P1980();
P1237();
P3603();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3741 in the procedure';
end-proc;