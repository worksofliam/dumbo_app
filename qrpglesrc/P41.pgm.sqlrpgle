**free

ctl-opt dftactgrp(*no);

dcl-pi P41;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T890') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T890 LIMIT 1;

theCharVar = 'Hello from P41';
dsply theCharVar;
callp localProc();
P8();
P28();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P41 in the procedure';
end-proc;