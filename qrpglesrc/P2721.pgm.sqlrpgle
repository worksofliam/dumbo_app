**free

ctl-opt dftactgrp(*no);

dcl-pi P2721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P2597.rpgleinc'
/copy 'qrpgleref/P1501.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P2721';
dsply theCharVar;
callp localProc();
P1843();
P2597();
P1501();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2721 in the procedure';
end-proc;