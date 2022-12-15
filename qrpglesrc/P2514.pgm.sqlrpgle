**free

ctl-opt dftactgrp(*no);

dcl-pi P2514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2324.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'

dcl-ds T948 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T948 FROM T948 LIMIT 1;

theCharVar = 'Hello from P2514';
dsply theCharVar;
callp localProc();
P2324();
P695();
P1600();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2514 in the procedure';
end-proc;