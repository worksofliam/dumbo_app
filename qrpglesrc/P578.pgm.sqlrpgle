**free

ctl-opt dftactgrp(*no);

dcl-pi P578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P578';
dsply theCharVar;
callp localProc();
P158();
P210();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P578 in the procedure';
end-proc;