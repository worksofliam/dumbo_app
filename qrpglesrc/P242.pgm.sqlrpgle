**free

ctl-opt dftactgrp(*no);

dcl-pi P242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P242';
dsply theCharVar;
callp localProc();
P82();
P142();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P242 in the procedure';
end-proc;