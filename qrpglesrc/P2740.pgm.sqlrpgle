**free

ctl-opt dftactgrp(*no);

dcl-pi P2740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P2153.rpgleinc'

dcl-ds T1437 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1437 FROM T1437 LIMIT 1;

theCharVar = 'Hello from P2740';
dsply theCharVar;
callp localProc();
P625();
P293();
P2153();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2740 in the procedure';
end-proc;