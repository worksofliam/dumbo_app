**free

ctl-opt dftactgrp(*no);

dcl-pi P1960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1567.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P1960';
dsply theCharVar;
callp localProc();
P1567();
P423();
P1242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1960 in the procedure';
end-proc;