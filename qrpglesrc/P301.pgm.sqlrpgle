**free

ctl-opt dftactgrp(*no);

dcl-pi P301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P301';
dsply theCharVar;
callp localProc();
P97();
P114();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P301 in the procedure';
end-proc;