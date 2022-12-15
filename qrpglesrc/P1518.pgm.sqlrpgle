**free

ctl-opt dftactgrp(*no);

dcl-pi P1518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P1515.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P1518';
dsply theCharVar;
callp localProc();
P632();
P28();
P1515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1518 in the procedure';
end-proc;