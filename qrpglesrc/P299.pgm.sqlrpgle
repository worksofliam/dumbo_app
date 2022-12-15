**free

ctl-opt dftactgrp(*no);

dcl-pi P299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1394 LIMIT 1;

theCharVar = 'Hello from P299';
dsply theCharVar;
callp localProc();
P8();
P253();
P79();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P299 in the procedure';
end-proc;