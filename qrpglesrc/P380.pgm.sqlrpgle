**free

ctl-opt dftactgrp(*no);

dcl-pi P380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P380';
dsply theCharVar;
callp localProc();
P219();
P289();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P380 in the procedure';
end-proc;