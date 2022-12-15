**free

ctl-opt dftactgrp(*no);

dcl-pi P13;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P13';
dsply theCharVar;
callp localProc();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P13 in the procedure';
end-proc;