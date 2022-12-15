**free

ctl-opt dftactgrp(*no);

dcl-pi P1037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds theTable extname('T1722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1722 LIMIT 1;

theCharVar = 'Hello from P1037';
dsply theCharVar;
callp localProc();
P922();
P396();
P699();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1037 in the procedure';
end-proc;