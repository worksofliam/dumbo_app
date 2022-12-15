**free

ctl-opt dftactgrp(*no);

dcl-pi P2954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1491.rpgleinc'
/copy 'qrpgleref/P1834.rpgleinc'
/copy 'qrpgleref/P2257.rpgleinc'

dcl-ds T461 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T461 FROM T461 LIMIT 1;

theCharVar = 'Hello from P2954';
dsply theCharVar;
callp localProc();
P1491();
P1834();
P2257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2954 in the procedure';
end-proc;