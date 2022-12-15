**free

ctl-opt dftactgrp(*no);

dcl-pi P2200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'

dcl-ds T760 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T760 FROM T760 LIMIT 1;

theCharVar = 'Hello from P2200';
dsply theCharVar;
callp localProc();
P226();
P1434();
P1428();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2200 in the procedure';
end-proc;