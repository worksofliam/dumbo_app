**free

ctl-opt dftactgrp(*no);

dcl-pi P515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P515';
dsply theCharVar;
callp localProc();
P315();
P421();
P96();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P515 in the procedure';
end-proc;