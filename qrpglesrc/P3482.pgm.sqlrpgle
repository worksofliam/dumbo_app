**free

ctl-opt dftactgrp(*no);

dcl-pi P3482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2123.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P2425.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P3482';
dsply theCharVar;
callp localProc();
P2123();
P154();
P2425();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3482 in the procedure';
end-proc;