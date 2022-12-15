**free

ctl-opt dftactgrp(*no);

dcl-pi P2856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1603.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'

dcl-ds T1429 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1429 FROM T1429 LIMIT 1;

theCharVar = 'Hello from P2856';
dsply theCharVar;
callp localProc();
P1603();
P352();
P942();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2856 in the procedure';
end-proc;