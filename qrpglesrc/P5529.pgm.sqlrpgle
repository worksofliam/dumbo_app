**free

ctl-opt dftactgrp(*no);

dcl-pi P5529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3017.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'
/copy 'qrpgleref/P2899.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P5529';
dsply theCharVar;
callp localProc();
P3017();
P961();
P2899();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5529 in the procedure';
end-proc;