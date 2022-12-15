**free

ctl-opt dftactgrp(*no);

dcl-pi P1406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P1406';
dsply theCharVar;
callp localProc();
P788();
P1048();
P392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1406 in the procedure';
end-proc;