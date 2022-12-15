**free

ctl-opt dftactgrp(*no);

dcl-pi P3384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P2448.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T664 LIMIT 1;

theCharVar = 'Hello from P3384';
dsply theCharVar;
callp localProc();
P1314();
P2448();
P443();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3384 in the procedure';
end-proc;