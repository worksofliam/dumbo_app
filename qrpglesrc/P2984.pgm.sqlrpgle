**free

ctl-opt dftactgrp(*no);

dcl-pi P2984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P871.rpgleinc'
/copy 'qrpgleref/P2972.rpgleinc'

dcl-ds theTable extname('T1583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1583 LIMIT 1;

theCharVar = 'Hello from P2984';
dsply theCharVar;
callp localProc();
P192();
P871();
P2972();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2984 in the procedure';
end-proc;