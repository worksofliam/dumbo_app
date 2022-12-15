**free

ctl-opt dftactgrp(*no);

dcl-pi P3047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2189.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P3047';
dsply theCharVar;
callp localProc();
P2189();
P482();
P571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3047 in the procedure';
end-proc;