**free

ctl-opt dftactgrp(*no);

dcl-pi P3074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1982.rpgleinc'
/copy 'qrpgleref/P1191.rpgleinc'
/copy 'qrpgleref/P1856.rpgleinc'

dcl-ds theTable extname('T534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T534 LIMIT 1;

theCharVar = 'Hello from P3074';
dsply theCharVar;
callp localProc();
P1982();
P1191();
P1856();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3074 in the procedure';
end-proc;