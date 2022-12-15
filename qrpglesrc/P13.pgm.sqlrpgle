**free

ctl-opt dftactgrp(*no);

dcl-pi P13;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P13';
dsply theCharVar;
callp localProc();
P10();
P11();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P13 in the procedure';
end-proc;