**free

ctl-opt dftactgrp(*no);

dcl-pi P2786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1964.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'
/copy 'qrpgleref/P2520.rpgleinc'

dcl-ds theTable extname('T970') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T970 LIMIT 1;

theCharVar = 'Hello from P2786';
dsply theCharVar;
callp localProc();
P1964();
P1461();
P2520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2786 in the procedure';
end-proc;