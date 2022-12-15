**free

ctl-opt dftactgrp(*no);

dcl-pi P3396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2107.rpgleinc'
/copy 'qrpgleref/P1806.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'

dcl-ds T622 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T622 FROM T622 LIMIT 1;

theCharVar = 'Hello from P3396';
dsply theCharVar;
callp localProc();
P2107();
P1806();
P615();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3396 in the procedure';
end-proc;