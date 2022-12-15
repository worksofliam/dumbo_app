**free

ctl-opt dftactgrp(*no);

dcl-pi P5120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds theTable extname('T1770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1770 LIMIT 1;

theCharVar = 'Hello from P5120';
dsply theCharVar;
callp localProc();
P454();
P314();
P563();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5120 in the procedure';
end-proc;