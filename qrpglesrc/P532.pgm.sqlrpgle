**free

ctl-opt dftactgrp(*no);

dcl-pi P532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'

dcl-ds theTable extname('T601') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T601 LIMIT 1;

theCharVar = 'Hello from P532';
dsply theCharVar;
callp localProc();
P386();
P119();
P363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P532 in the procedure';
end-proc;