**free

ctl-opt dftactgrp(*no);

dcl-pi P2286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'

dcl-ds theTable extname('T683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T683 LIMIT 1;

theCharVar = 'Hello from P2286';
dsply theCharVar;
callp localProc();
P2261();
P142();
P1919();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2286 in the procedure';
end-proc;