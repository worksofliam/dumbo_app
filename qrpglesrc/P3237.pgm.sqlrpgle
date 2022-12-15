**free

ctl-opt dftactgrp(*no);

dcl-pi P3237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2388.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P1167.rpgleinc'

dcl-ds theTable extname('T1302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1302 LIMIT 1;

theCharVar = 'Hello from P3237';
dsply theCharVar;
callp localProc();
P2388();
P706();
P1167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3237 in the procedure';
end-proc;