**free

ctl-opt dftactgrp(*no);

dcl-pi P4603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3985.rpgleinc'
/copy 'qrpgleref/P4239.rpgleinc'
/copy 'qrpgleref/P1442.rpgleinc'

dcl-ds theTable extname('T1175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1175 LIMIT 1;

theCharVar = 'Hello from P4603';
dsply theCharVar;
callp localProc();
P3985();
P4239();
P1442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4603 in the procedure';
end-proc;