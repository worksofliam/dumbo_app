**free

ctl-opt dftactgrp(*no);

dcl-pi P3907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3391.rpgleinc'
/copy 'qrpgleref/P3833.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'

dcl-ds theTable extname('T975') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T975 LIMIT 1;

theCharVar = 'Hello from P3907';
dsply theCharVar;
callp localProc();
P3391();
P3833();
P2021();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3907 in the procedure';
end-proc;