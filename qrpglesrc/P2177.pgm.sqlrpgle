**free

ctl-opt dftactgrp(*no);

dcl-pi P2177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'

dcl-ds theTable extname('T862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T862 LIMIT 1;

theCharVar = 'Hello from P2177';
dsply theCharVar;
callp localProc();
P526();
P2029();
P546();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2177 in the procedure';
end-proc;