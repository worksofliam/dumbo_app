**free

ctl-opt dftactgrp(*no);

dcl-pi P3175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1912.rpgleinc'
/copy 'qrpgleref/P2220.rpgleinc'
/copy 'qrpgleref/P2389.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P3175';
dsply theCharVar;
callp localProc();
P1912();
P2220();
P2389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3175 in the procedure';
end-proc;