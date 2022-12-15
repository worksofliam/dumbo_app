**free

ctl-opt dftactgrp(*no);

dcl-pi P3050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P1657.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P3050';
dsply theCharVar;
callp localProc();
P775();
P265();
P1657();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3050 in the procedure';
end-proc;