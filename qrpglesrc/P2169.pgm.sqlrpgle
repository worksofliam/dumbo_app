**free

ctl-opt dftactgrp(*no);

dcl-pi P2169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1380.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P1187.rpgleinc'

dcl-ds T1314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1314 FROM T1314 LIMIT 1;

theCharVar = 'Hello from P2169';
dsply theCharVar;
callp localProc();
P1380();
P1572();
P1187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2169 in the procedure';
end-proc;