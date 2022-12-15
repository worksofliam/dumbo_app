**free

ctl-opt dftactgrp(*no);

dcl-pi P2873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P2365.rpgleinc'
/copy 'qrpgleref/P2760.rpgleinc'

dcl-ds T810 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T810 FROM T810 LIMIT 1;

theCharVar = 'Hello from P2873';
dsply theCharVar;
callp localProc();
P841();
P2365();
P2760();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2873 in the procedure';
end-proc;