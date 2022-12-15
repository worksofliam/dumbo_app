**free

ctl-opt dftactgrp(*no);

dcl-pi P592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T763') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T763 LIMIT 1;

theCharVar = 'Hello from P592';
dsply theCharVar;
callp localProc();
P17();
P497();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P592 in the procedure';
end-proc;