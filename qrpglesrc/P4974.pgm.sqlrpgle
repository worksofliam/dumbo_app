**free

ctl-opt dftactgrp(*no);

dcl-pi P4974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2936.rpgleinc'
/copy 'qrpgleref/P4226.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds T1390 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1390 FROM T1390 LIMIT 1;

theCharVar = 'Hello from P4974';
dsply theCharVar;
callp localProc();
P2936();
P4226();
P1499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4974 in the procedure';
end-proc;