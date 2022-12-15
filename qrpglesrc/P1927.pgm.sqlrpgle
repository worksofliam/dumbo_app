**free

ctl-opt dftactgrp(*no);

dcl-pi P1927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P1722.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P1927';
dsply theCharVar;
callp localProc();
P1452();
P1722();
P1532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1927 in the procedure';
end-proc;