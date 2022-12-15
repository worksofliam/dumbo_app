**free

ctl-opt dftactgrp(*no);

dcl-pi P3533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2483.rpgleinc'
/copy 'qrpgleref/P2688.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'

dcl-ds theTable extname('T1705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1705 LIMIT 1;

theCharVar = 'Hello from P3533';
dsply theCharVar;
callp localProc();
P2483();
P2688();
P1742();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3533 in the procedure';
end-proc;