**free

ctl-opt dftactgrp(*no);

dcl-pi P2428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds T715 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T715 FROM T715 LIMIT 1;

theCharVar = 'Hello from P2428';
dsply theCharVar;
callp localProc();
P137();
P1091();
P900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2428 in the procedure';
end-proc;