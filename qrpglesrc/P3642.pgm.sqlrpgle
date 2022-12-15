**free

ctl-opt dftactgrp(*no);

dcl-pi P3642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1568.rpgleinc'
/copy 'qrpgleref/P3304.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T565') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T565 LIMIT 1;

theCharVar = 'Hello from P3642';
dsply theCharVar;
callp localProc();
P1568();
P3304();
P394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3642 in the procedure';
end-proc;