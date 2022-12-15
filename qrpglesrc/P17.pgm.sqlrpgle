**free

ctl-opt dftactgrp(*no);

dcl-pi P17;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P17';
dsply theCharVar;
callp localProc();
P8();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P17 in the procedure';
end-proc;