**free

ctl-opt dftactgrp(*no);

dcl-pi P421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds theTable extname('T490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T490 LIMIT 1;

theCharVar = 'Hello from P421';
dsply theCharVar;
callp localProc();
P118();
P50();
P301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P421 in the procedure';
end-proc;