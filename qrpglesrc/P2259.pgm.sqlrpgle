**free

ctl-opt dftactgrp(*no);

dcl-pi P2259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P1810.rpgleinc'

dcl-ds T243 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T243 FROM T243 LIMIT 1;

theCharVar = 'Hello from P2259';
dsply theCharVar;
callp localProc();
P775();
P651();
P1810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2259 in the procedure';
end-proc;