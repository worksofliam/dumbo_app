**free

ctl-opt dftactgrp(*no);

dcl-pi P198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P198';
dsply theCharVar;
callp localProc();
P171();
P84();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P198 in the procedure';
end-proc;