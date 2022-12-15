**free

ctl-opt dftactgrp(*no);

dcl-pi P2159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'

dcl-ds T1832 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1832 FROM T1832 LIMIT 1;

theCharVar = 'Hello from P2159';
dsply theCharVar;
callp localProc();
P1419();
P626();
P889();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2159 in the procedure';
end-proc;