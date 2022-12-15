**free

ctl-opt dftactgrp(*no);

dcl-pi P390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P390';
dsply theCharVar;
callp localProc();
P323();
P98();
P350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P390 in the procedure';
end-proc;