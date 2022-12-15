**free

ctl-opt dftactgrp(*no);

dcl-pi P2744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'
/copy 'qrpgleref/P2298.rpgleinc'

dcl-ds T996 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T996 FROM T996 LIMIT 1;

theCharVar = 'Hello from P2744';
dsply theCharVar;
callp localProc();
P1063();
P1768();
P2298();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2744 in the procedure';
end-proc;