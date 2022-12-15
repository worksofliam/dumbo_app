**free

ctl-opt dftactgrp(*no);

dcl-pi P293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P293';
dsply theCharVar;
callp localProc();
P10();
P79();
P171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P293 in the procedure';
end-proc;