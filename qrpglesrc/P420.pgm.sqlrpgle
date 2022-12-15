**free

ctl-opt dftactgrp(*no);

dcl-pi P420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P420';
dsply theCharVar;
callp localProc();
P3();
P172();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P420 in the procedure';
end-proc;