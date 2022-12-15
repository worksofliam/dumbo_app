**free

ctl-opt dftactgrp(*no);

dcl-pi P459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T288 LIMIT 1;

theCharVar = 'Hello from P459';
dsply theCharVar;
callp localProc();
P64();
P245();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P459 in the procedure';
end-proc;