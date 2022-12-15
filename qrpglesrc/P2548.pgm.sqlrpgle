**free

ctl-opt dftactgrp(*no);

dcl-pi P2548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'
/copy 'qrpgleref/P1864.rpgleinc'

dcl-ds T816 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T816 FROM T816 LIMIT 1;

theCharVar = 'Hello from P2548';
dsply theCharVar;
callp localProc();
P1185();
P2477();
P1864();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2548 in the procedure';
end-proc;