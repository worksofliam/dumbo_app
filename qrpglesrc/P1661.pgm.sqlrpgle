**free

ctl-opt dftactgrp(*no);

dcl-pi P1661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'

dcl-ds theTable extname('T587') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T587 LIMIT 1;

theCharVar = 'Hello from P1661';
dsply theCharVar;
callp localProc();
P560();
P876();
P1063();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1661 in the procedure';
end-proc;