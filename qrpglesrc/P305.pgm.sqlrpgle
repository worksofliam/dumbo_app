**free

ctl-opt dftactgrp(*no);

dcl-pi P305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P305';
dsply theCharVar;
callp localProc();
P152();
P102();
P222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P305 in the procedure';
end-proc;