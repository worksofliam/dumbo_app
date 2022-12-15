**free

ctl-opt dftactgrp(*no);

dcl-pi P5272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3262.rpgleinc'
/copy 'qrpgleref/P2270.rpgleinc'
/copy 'qrpgleref/P2245.rpgleinc'

dcl-ds theTable extname('T1202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1202 LIMIT 1;

theCharVar = 'Hello from P5272';
dsply theCharVar;
callp localProc();
P3262();
P2270();
P2245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5272 in the procedure';
end-proc;