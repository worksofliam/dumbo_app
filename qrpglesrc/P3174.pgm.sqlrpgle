**free

ctl-opt dftactgrp(*no);

dcl-pi P3174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P2325.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds T135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T135 FROM T135 LIMIT 1;

theCharVar = 'Hello from P3174';
dsply theCharVar;
callp localProc();
P1035();
P2325();
P487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3174 in the procedure';
end-proc;