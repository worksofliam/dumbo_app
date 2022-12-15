**free

ctl-opt dftactgrp(*no);

dcl-pi P783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T324 LIMIT 1;

theCharVar = 'Hello from P783';
dsply theCharVar;
callp localProc();
P114();
P701();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P783 in the procedure';
end-proc;