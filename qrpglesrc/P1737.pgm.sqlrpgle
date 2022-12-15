**free

ctl-opt dftactgrp(*no);

dcl-pi P1737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1480.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P1553.rpgleinc'

dcl-ds theTable extname('T1080') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1080 LIMIT 1;

theCharVar = 'Hello from P1737';
dsply theCharVar;
callp localProc();
P1480();
P750();
P1553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1737 in the procedure';
end-proc;