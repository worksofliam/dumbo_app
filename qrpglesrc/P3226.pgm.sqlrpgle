**free

ctl-opt dftactgrp(*no);

dcl-pi P3226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'

dcl-ds theTable extname('T658') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T658 LIMIT 1;

theCharVar = 'Hello from P3226';
dsply theCharVar;
callp localProc();
P964();
P113();
P522();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3226 in the procedure';
end-proc;