**free

ctl-opt dftactgrp(*no);

dcl-pi P687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P687';
dsply theCharVar;
callp localProc();
P539();
P290();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P687 in the procedure';
end-proc;