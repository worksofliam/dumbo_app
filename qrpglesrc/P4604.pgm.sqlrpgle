**free

ctl-opt dftactgrp(*no);

dcl-pi P4604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3040.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P3222.rpgleinc'

dcl-ds theTable extname('T1327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1327 LIMIT 1;

theCharVar = 'Hello from P4604';
dsply theCharVar;
callp localProc();
P3040();
P7();
P3222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4604 in the procedure';
end-proc;