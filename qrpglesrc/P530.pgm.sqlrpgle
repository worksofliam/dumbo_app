**free

ctl-opt dftactgrp(*no);

dcl-pi P530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P530';
dsply theCharVar;
callp localProc();
P456();
P303();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P530 in the procedure';
end-proc;