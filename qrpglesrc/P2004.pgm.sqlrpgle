**free

ctl-opt dftactgrp(*no);

dcl-pi P2004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P1905.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P2004';
dsply theCharVar;
callp localProc();
P1052();
P572();
P1905();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2004 in the procedure';
end-proc;