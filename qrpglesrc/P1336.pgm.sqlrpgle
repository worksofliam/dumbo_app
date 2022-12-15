**free

ctl-opt dftactgrp(*no);

dcl-pi P1336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P853.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'

dcl-ds theTable extname('T1218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1218 LIMIT 1;

theCharVar = 'Hello from P1336';
dsply theCharVar;
callp localProc();
P853();
P49();
P564();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1336 in the procedure';
end-proc;