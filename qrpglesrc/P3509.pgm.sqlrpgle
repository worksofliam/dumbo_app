**free

ctl-opt dftactgrp(*no);

dcl-pi P3509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P2022.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T464') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T464 LIMIT 1;

theCharVar = 'Hello from P3509';
dsply theCharVar;
callp localProc();
P1486();
P2022();
P160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3509 in the procedure';
end-proc;