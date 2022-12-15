**free

ctl-opt dftactgrp(*no);

dcl-pi P3268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P2817.rpgleinc'
/copy 'qrpgleref/P3238.rpgleinc'

dcl-ds theTable extname('T457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T457 LIMIT 1;

theCharVar = 'Hello from P3268';
dsply theCharVar;
callp localProc();
P1354();
P2817();
P3238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3268 in the procedure';
end-proc;