**free

ctl-opt dftactgrp(*no);

dcl-pi P5324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P5317.rpgleinc'
/copy 'qrpgleref/P4209.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P5324';
dsply theCharVar;
callp localProc();
P1254();
P5317();
P4209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5324 in the procedure';
end-proc;