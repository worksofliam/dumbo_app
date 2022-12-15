**free

ctl-opt dftactgrp(*no);

dcl-pi P39;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P39';
dsply theCharVar;
callp localProc();
P21();
P36();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P39 in the procedure';
end-proc;