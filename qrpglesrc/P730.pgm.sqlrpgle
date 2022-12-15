**free

ctl-opt dftactgrp(*no);

dcl-pi P730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'

dcl-ds theTable extname('T1510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1510 LIMIT 1;

theCharVar = 'Hello from P730';
dsply theCharVar;
callp localProc();
P482();
P456();
P664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P730 in the procedure';
end-proc;