**free

ctl-opt dftactgrp(*no);

dcl-pi P3972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2988.rpgleinc'
/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P2147.rpgleinc'

dcl-ds theTable extname('T565') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T565 LIMIT 1;

theCharVar = 'Hello from P3972';
dsply theCharVar;
callp localProc();
P2988();
P1238();
P2147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3972 in the procedure';
end-proc;