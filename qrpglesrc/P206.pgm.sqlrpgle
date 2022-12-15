**free

ctl-opt dftactgrp(*no);

dcl-pi P206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T919') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T919 LIMIT 1;

theCharVar = 'Hello from P206';
dsply theCharVar;
callp localProc();
P135();
P198();
P53();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P206 in the procedure';
end-proc;