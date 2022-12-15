**free

ctl-opt dftactgrp(*no);

dcl-pi P675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P675';
dsply theCharVar;
callp localProc();
P470();
P209();
P316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P675 in the procedure';
end-proc;