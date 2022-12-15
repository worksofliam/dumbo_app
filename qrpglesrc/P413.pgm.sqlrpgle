**free

ctl-opt dftactgrp(*no);

dcl-pi P413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P413';
dsply theCharVar;
callp localProc();
P144();
P290();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P413 in the procedure';
end-proc;