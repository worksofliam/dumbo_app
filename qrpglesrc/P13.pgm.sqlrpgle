**free

ctl-opt dftactgrp(*no);

dcl-pi P13;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T1005') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1005 LIMIT 1;

theCharVar = 'Hello from P13';
dsply theCharVar;
callp localProc();
P12();
P10();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P13 in the procedure';
end-proc;