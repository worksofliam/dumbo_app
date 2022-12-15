**free

ctl-opt dftactgrp(*no);

dcl-pi P798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P798';
dsply theCharVar;
callp localProc();
P315();
P175();
P612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P798 in the procedure';
end-proc;