**free

ctl-opt dftactgrp(*no);

dcl-pi P5345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P1645.rpgleinc'

dcl-ds theTable extname('T1505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1505 LIMIT 1;

theCharVar = 'Hello from P5345';
dsply theCharVar;
callp localProc();
P1091();
P546();
P1645();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5345 in the procedure';
end-proc;