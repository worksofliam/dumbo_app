**free

ctl-opt dftactgrp(*no);

dcl-pi P2721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P2638.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds theTable extname('T828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T828 LIMIT 1;

theCharVar = 'Hello from P2721';
dsply theCharVar;
callp localProc();
P1283();
P2638();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2721 in the procedure';
end-proc;