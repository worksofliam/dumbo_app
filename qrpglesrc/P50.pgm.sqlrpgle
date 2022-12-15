**free

ctl-opt dftactgrp(*no);

dcl-pi P50;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P50';
dsply theCharVar;
callp localProc();
P23();
P26();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P50 in the procedure';
end-proc;