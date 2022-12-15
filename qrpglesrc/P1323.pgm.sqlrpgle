**free

ctl-opt dftactgrp(*no);

dcl-pi P1323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P1323';
dsply theCharVar;
callp localProc();
P455();
P1205();
P825();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1323 in the procedure';
end-proc;