**free

ctl-opt dftactgrp(*no);

dcl-pi P5562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P2078.rpgleinc'

dcl-ds T1086 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1086 FROM T1086 LIMIT 1;

theCharVar = 'Hello from P5562';
dsply theCharVar;
callp localProc();
P1630();
P128();
P2078();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5562 in the procedure';
end-proc;