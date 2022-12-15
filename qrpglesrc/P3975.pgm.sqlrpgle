**free

ctl-opt dftactgrp(*no);

dcl-pi P3975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'

dcl-ds theTable extname('T901') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T901 LIMIT 1;

theCharVar = 'Hello from P3975';
dsply theCharVar;
callp localProc();
P1004();
P1387();
P1337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3975 in the procedure';
end-proc;