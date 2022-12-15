**free

ctl-opt dftactgrp(*no);

dcl-pi P3734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2917.rpgleinc'
/copy 'qrpgleref/P1642.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'

dcl-ds T410 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T410 FROM T410 LIMIT 1;

theCharVar = 'Hello from P3734';
dsply theCharVar;
callp localProc();
P2917();
P1642();
P370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3734 in the procedure';
end-proc;