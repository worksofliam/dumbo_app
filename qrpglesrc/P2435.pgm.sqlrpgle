**free

ctl-opt dftactgrp(*no);

dcl-pi P2435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2220.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'

dcl-ds T593 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T593 FROM T593 LIMIT 1;

theCharVar = 'Hello from P2435';
dsply theCharVar;
callp localProc();
P2220();
P382();
P801();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2435 in the procedure';
end-proc;