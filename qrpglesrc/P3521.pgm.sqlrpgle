**free

ctl-opt dftactgrp(*no);

dcl-pi P3521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3397.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P3448.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P3521';
dsply theCharVar;
callp localProc();
P3397();
P142();
P3448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3521 in the procedure';
end-proc;