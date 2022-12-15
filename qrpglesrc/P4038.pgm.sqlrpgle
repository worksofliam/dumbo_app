**free

ctl-opt dftactgrp(*no);

dcl-pi P4038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2552.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds T1827 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1827 FROM T1827 LIMIT 1;

theCharVar = 'Hello from P4038';
dsply theCharVar;
callp localProc();
P2552();
P817();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4038 in the procedure';
end-proc;