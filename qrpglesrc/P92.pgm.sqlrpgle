**free

ctl-opt dftactgrp(*no);

dcl-pi P92;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P92';
dsply theCharVar;
callp localProc();
P77();
P90();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P92 in the procedure';
end-proc;