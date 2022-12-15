**free

ctl-opt dftactgrp(*no);

dcl-pi P4950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2136.rpgleinc'
/copy 'qrpgleref/P4366.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds T717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T717 FROM T717 LIMIT 1;

theCharVar = 'Hello from P4950';
dsply theCharVar;
callp localProc();
P2136();
P4366();
P364();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4950 in the procedure';
end-proc;