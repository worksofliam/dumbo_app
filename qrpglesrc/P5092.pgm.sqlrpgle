**free

ctl-opt dftactgrp(*no);

dcl-pi P5092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1812.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P5092';
dsply theCharVar;
callp localProc();
P1812();
P90();
P287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5092 in the procedure';
end-proc;