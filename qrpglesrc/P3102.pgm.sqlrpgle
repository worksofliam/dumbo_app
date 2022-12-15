**free

ctl-opt dftactgrp(*no);

dcl-pi P3102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P3102';
dsply theCharVar;
callp localProc();
P1614();
P314();
P194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3102 in the procedure';
end-proc;