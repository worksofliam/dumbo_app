**free

ctl-opt dftactgrp(*no);

dcl-pi P2874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2787.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P2604.rpgleinc'

dcl-ds T1210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1210 FROM T1210 LIMIT 1;

theCharVar = 'Hello from P2874';
dsply theCharVar;
callp localProc();
P2787();
P1373();
P2604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2874 in the procedure';
end-proc;