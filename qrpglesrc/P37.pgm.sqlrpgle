**free

ctl-opt dftactgrp(*no);

dcl-pi P37;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T1228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1228 LIMIT 1;

theCharVar = 'Hello from P37';
dsply theCharVar;
callp localProc();
P21();
P27();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P37 in the procedure';
end-proc;