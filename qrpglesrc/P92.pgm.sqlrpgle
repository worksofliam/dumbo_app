**free

ctl-opt dftactgrp(*no);

dcl-pi P92;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P92';
dsply theCharVar;
callp localProc();
P27();
P55();
P79();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P92 in the procedure';
end-proc;