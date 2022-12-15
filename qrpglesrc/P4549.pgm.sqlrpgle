**free

ctl-opt dftactgrp(*no);

dcl-pi P4549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2288.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'

dcl-ds T1542 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1542 FROM T1542 LIMIT 1;

theCharVar = 'Hello from P4549';
dsply theCharVar;
callp localProc();
P2288();
P949();
P1826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4549 in the procedure';
end-proc;