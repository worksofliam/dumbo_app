**free

ctl-opt dftactgrp(*no);

dcl-pi P3209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P1267.rpgleinc'
/copy 'qrpgleref/P1234.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P3209';
dsply theCharVar;
callp localProc();
P64();
P1267();
P1234();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3209 in the procedure';
end-proc;