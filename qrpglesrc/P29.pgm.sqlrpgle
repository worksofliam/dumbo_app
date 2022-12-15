**free

ctl-opt dftactgrp(*no);

dcl-pi P29;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T221 LIMIT 1;

theCharVar = 'Hello from P29';
dsply theCharVar;
callp localProc();
P13();
P24();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P29 in the procedure';
end-proc;