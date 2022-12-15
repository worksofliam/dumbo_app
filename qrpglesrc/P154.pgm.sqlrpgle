**free

ctl-opt dftactgrp(*no);

dcl-pi P154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T789') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T789 LIMIT 1;

theCharVar = 'Hello from P154';
dsply theCharVar;
callp localProc();
P61();
P14();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P154 in the procedure';
end-proc;