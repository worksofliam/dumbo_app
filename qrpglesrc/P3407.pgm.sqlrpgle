**free

ctl-opt dftactgrp(*no);

dcl-pi P3407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1304.rpgleinc'
/copy 'qrpgleref/P2914.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'

dcl-ds theTable extname('T259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T259 LIMIT 1;

theCharVar = 'Hello from P3407';
dsply theCharVar;
callp localProc();
P1304();
P2914();
P669();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3407 in the procedure';
end-proc;