**free

ctl-opt dftactgrp(*no);

dcl-pi P913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T1057') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1057 LIMIT 1;

theCharVar = 'Hello from P913';
dsply theCharVar;
callp localProc();
P412();
P242();
P67();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P913 in the procedure';
end-proc;