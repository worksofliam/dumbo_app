**free

ctl-opt dftactgrp(*no);

dcl-pi P1900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1059.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P1521.rpgleinc'

dcl-ds theTable extname('T1057') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1057 LIMIT 1;

theCharVar = 'Hello from P1900';
dsply theCharVar;
callp localProc();
P1059();
P691();
P1521();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1900 in the procedure';
end-proc;