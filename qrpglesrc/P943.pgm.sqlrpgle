**free

ctl-opt dftactgrp(*no);

dcl-pi P943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P943';
dsply theCharVar;
callp localProc();
P605();
P219();
P119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P943 in the procedure';
end-proc;