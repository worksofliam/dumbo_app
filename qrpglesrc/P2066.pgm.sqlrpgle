**free

ctl-opt dftactgrp(*no);

dcl-pi P2066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'

dcl-ds T1546 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1546 FROM T1546 LIMIT 1;

theCharVar = 'Hello from P2066';
dsply theCharVar;
callp localProc();
P543();
P606();
P1783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2066 in the procedure';
end-proc;