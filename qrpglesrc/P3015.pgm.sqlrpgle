**free

ctl-opt dftactgrp(*no);

dcl-pi P3015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2569.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P2763.rpgleinc'

dcl-ds T580 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T580 FROM T580 LIMIT 1;

theCharVar = 'Hello from P3015';
dsply theCharVar;
callp localProc();
P2569();
P899();
P2763();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3015 in the procedure';
end-proc;