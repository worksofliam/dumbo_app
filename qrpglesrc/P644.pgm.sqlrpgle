**free

ctl-opt dftactgrp(*no);

dcl-pi P644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'

dcl-ds theTable extname('T327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T327 LIMIT 1;

theCharVar = 'Hello from P644';
dsply theCharVar;
callp localProc();
P545();
P40();
P613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P644 in the procedure';
end-proc;