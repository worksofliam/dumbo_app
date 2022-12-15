**free

ctl-opt dftactgrp(*no);

dcl-pi P1159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T1172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1172 LIMIT 1;

theCharVar = 'Hello from P1159';
dsply theCharVar;
callp localProc();
P102();
P206();
P486();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1159 in the procedure';
end-proc;