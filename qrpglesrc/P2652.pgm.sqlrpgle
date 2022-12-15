**free

ctl-opt dftactgrp(*no);

dcl-pi P2652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2625.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P1002.rpgleinc'

dcl-ds T1019 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1019 FROM T1019 LIMIT 1;

theCharVar = 'Hello from P2652';
dsply theCharVar;
callp localProc();
P2625();
P1150();
P1002();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2652 in the procedure';
end-proc;