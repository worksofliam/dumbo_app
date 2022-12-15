**free

ctl-opt dftactgrp(*no);

dcl-pi P5597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1957.rpgleinc'
/copy 'qrpgleref/P4964.rpgleinc'
/copy 'qrpgleref/P3278.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P5597';
dsply theCharVar;
callp localProc();
P1957();
P4964();
P3278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5597 in the procedure';
end-proc;