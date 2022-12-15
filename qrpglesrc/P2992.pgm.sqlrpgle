**free

ctl-opt dftactgrp(*no);

dcl-pi P2992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P1810.rpgleinc'

dcl-ds T1028 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1028 FROM T1028 LIMIT 1;

theCharVar = 'Hello from P2992';
dsply theCharVar;
callp localProc();
P957();
P1387();
P1810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2992 in the procedure';
end-proc;