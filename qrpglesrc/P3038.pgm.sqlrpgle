**free

ctl-opt dftactgrp(*no);

dcl-pi P3038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1801.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P2934.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P3038';
dsply theCharVar;
callp localProc();
P1801();
P33();
P2934();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3038 in the procedure';
end-proc;