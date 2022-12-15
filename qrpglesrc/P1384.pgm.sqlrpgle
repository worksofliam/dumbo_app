**free

ctl-opt dftactgrp(*no);

dcl-pi P1384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P1384';
dsply theCharVar;
callp localProc();
P1026();
P700();
P347();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1384 in the procedure';
end-proc;