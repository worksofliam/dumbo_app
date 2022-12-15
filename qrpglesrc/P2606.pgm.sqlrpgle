**free

ctl-opt dftactgrp(*no);

dcl-pi P2606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1896.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'

dcl-ds T318 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T318 FROM T318 LIMIT 1;

theCharVar = 'Hello from P2606';
dsply theCharVar;
callp localProc();
P1896();
P112();
P1016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2606 in the procedure';
end-proc;