**free

ctl-opt dftactgrp(*no);

dcl-pi P53;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P53';
dsply theCharVar;
callp localProc();
P6();
P35();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P53 in the procedure';
end-proc;