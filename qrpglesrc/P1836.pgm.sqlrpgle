**free

ctl-opt dftactgrp(*no);

dcl-pi P1836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P1836';
dsply theCharVar;
callp localProc();
P1117();
P681();
P530();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1836 in the procedure';
end-proc;