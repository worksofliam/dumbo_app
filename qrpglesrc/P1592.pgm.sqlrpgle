**free

ctl-opt dftactgrp(*no);

dcl-pi P1592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'

dcl-ds theTable extname('T446') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T446 LIMIT 1;

theCharVar = 'Hello from P1592';
dsply theCharVar;
callp localProc();
P1009();
P349();
P546();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1592 in the procedure';
end-proc;