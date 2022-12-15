**free

ctl-opt dftactgrp(*no);

dcl-pi P2771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'

dcl-ds T1005 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1005 FROM T1005 LIMIT 1;

theCharVar = 'Hello from P2771';
dsply theCharVar;
callp localProc();
P383();
P561();
P2477();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2771 in the procedure';
end-proc;