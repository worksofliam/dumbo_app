**free

ctl-opt dftactgrp(*no);

dcl-pi P675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T989') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T989 LIMIT 1;

theCharVar = 'Hello from P675';
dsply theCharVar;
callp localProc();
P671();
P71();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P675 in the procedure';
end-proc;