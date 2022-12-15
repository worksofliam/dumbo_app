**free

ctl-opt dftactgrp(*no);

dcl-pi P2797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1765.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'

dcl-ds T779 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T779 FROM T779 LIMIT 1;

theCharVar = 'Hello from P2797';
dsply theCharVar;
callp localProc();
P1765();
P579();
P1339();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2797 in the procedure';
end-proc;