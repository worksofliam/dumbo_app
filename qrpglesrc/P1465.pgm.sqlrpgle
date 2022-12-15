**free

ctl-opt dftactgrp(*no);

dcl-pi P1465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P1320.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P1465';
dsply theCharVar;
callp localProc();
P1205();
P173();
P1320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1465 in the procedure';
end-proc;