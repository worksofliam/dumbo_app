**free

ctl-opt dftactgrp(*no);

dcl-pi P710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P710';
dsply theCharVar;
callp localProc();
P56();
P117();
P290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P710 in the procedure';
end-proc;