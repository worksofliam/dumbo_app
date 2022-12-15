**free

ctl-opt dftactgrp(*no);

dcl-pi P1525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'

dcl-ds theTable extname('T344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T344 LIMIT 1;

theCharVar = 'Hello from P1525';
dsply theCharVar;
callp localProc();
P1117();
P1000();
P567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1525 in the procedure';
end-proc;