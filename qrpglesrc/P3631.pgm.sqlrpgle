**free

ctl-opt dftactgrp(*no);

dcl-pi P3631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P2317.rpgleinc'
/copy 'qrpgleref/P2666.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P3631';
dsply theCharVar;
callp localProc();
P367();
P2317();
P2666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3631 in the procedure';
end-proc;