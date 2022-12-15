**free

ctl-opt dftactgrp(*no);

dcl-pi P295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P295';
dsply theCharVar;
callp localProc();
P17();
P102();
P254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P295 in the procedure';
end-proc;