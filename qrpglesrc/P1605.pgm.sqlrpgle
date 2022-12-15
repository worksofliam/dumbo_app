**free

ctl-opt dftactgrp(*no);

dcl-pi P1605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'

dcl-ds theTable extname('T218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T218 LIMIT 1;

theCharVar = 'Hello from P1605';
dsply theCharVar;
callp localProc();
P51();
P950();
P1512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1605 in the procedure';
end-proc;