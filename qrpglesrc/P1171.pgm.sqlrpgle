**free

ctl-opt dftactgrp(*no);

dcl-pi P1171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P1171';
dsply theCharVar;
callp localProc();
P740();
P938();
P178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1171 in the procedure';
end-proc;