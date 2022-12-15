**free

ctl-opt dftactgrp(*no);

dcl-pi P1343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P1343';
dsply theCharVar;
callp localProc();
P214();
P1119();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1343 in the procedure';
end-proc;