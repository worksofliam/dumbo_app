**free

ctl-opt dftactgrp(*no);

dcl-pi P1816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P1795.rpgleinc'

dcl-ds theTable extname('T751') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T751 LIMIT 1;

theCharVar = 'Hello from P1816';
dsply theCharVar;
callp localProc();
P563();
P247();
P1795();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1816 in the procedure';
end-proc;