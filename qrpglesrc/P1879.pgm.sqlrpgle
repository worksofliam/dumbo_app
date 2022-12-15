**free

ctl-opt dftactgrp(*no);

dcl-pi P1879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'

dcl-ds theTable extname('T943') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T943 LIMIT 1;

theCharVar = 'Hello from P1879';
dsply theCharVar;
callp localProc();
P286();
P812();
P522();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1879 in the procedure';
end-proc;