**free

ctl-opt dftactgrp(*no);

dcl-pi P2917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2023.rpgleinc'
/copy 'qrpgleref/P2520.rpgleinc'
/copy 'qrpgleref/P2755.rpgleinc'

dcl-ds theTable extname('T867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T867 LIMIT 1;

theCharVar = 'Hello from P2917';
dsply theCharVar;
callp localProc();
P2023();
P2520();
P2755();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2917 in the procedure';
end-proc;