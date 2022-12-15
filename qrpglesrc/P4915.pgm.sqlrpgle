**free

ctl-opt dftactgrp(*no);

dcl-pi P4915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'

dcl-ds T1133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1133 FROM T1133 LIMIT 1;

theCharVar = 'Hello from P4915';
dsply theCharVar;
callp localProc();
P320();
P2142();
P787();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4915 in the procedure';
end-proc;