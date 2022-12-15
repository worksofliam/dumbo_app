**free

ctl-opt dftactgrp(*no);

dcl-pi P1051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T434 LIMIT 1;

theCharVar = 'Hello from P1051';
dsply theCharVar;
callp localProc();
P301();
P889();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1051 in the procedure';
end-proc;