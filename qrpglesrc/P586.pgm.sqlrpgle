**free

ctl-opt dftactgrp(*no);

dcl-pi P586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P586';
dsply theCharVar;
callp localProc();
P236();
P525();
P190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P586 in the procedure';
end-proc;