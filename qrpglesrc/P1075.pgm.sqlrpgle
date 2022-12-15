**free

ctl-opt dftactgrp(*no);

dcl-pi P1075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds theTable extname('T1153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1153 LIMIT 1;

theCharVar = 'Hello from P1075';
dsply theCharVar;
callp localProc();
P143();
P439();
P223();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1075 in the procedure';
end-proc;