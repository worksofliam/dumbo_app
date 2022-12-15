**free

ctl-opt dftactgrp(*no);

dcl-pi P1662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P1662';
dsply theCharVar;
callp localProc();
P912();
P272();
P883();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1662 in the procedure';
end-proc;