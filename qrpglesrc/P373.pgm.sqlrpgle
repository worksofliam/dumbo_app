**free

ctl-opt dftactgrp(*no);

dcl-pi P373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P373';
dsply theCharVar;
callp localProc();
P195();
P84();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P373 in the procedure';
end-proc;