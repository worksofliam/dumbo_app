**free

ctl-opt dftactgrp(*no);

dcl-pi P3244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P2700.rpgleinc'
/copy 'qrpgleref/P2938.rpgleinc'

dcl-ds theTable extname('T404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T404 LIMIT 1;

theCharVar = 'Hello from P3244';
dsply theCharVar;
callp localProc();
P194();
P2700();
P2938();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3244 in the procedure';
end-proc;