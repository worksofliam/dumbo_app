**free

ctl-opt dftactgrp(*no);

dcl-pi P1442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P803.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P1442';
dsply theCharVar;
callp localProc();
P455();
P803();
P1427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1442 in the procedure';
end-proc;