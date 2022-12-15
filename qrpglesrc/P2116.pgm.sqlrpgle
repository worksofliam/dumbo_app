**free

ctl-opt dftactgrp(*no);

dcl-pi P2116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1445.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds T843 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T843 FROM T843 LIMIT 1;

theCharVar = 'Hello from P2116';
dsply theCharVar;
callp localProc();
P1445();
P1198();
P955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2116 in the procedure';
end-proc;