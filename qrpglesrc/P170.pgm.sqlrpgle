**free

ctl-opt dftactgrp(*no);

dcl-pi P170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P170';
dsply theCharVar;
callp localProc();
P60();
P67();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P170 in the procedure';
end-proc;