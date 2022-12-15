**free

ctl-opt dftactgrp(*no);

dcl-pi P2327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P2267.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'

dcl-ds theTable extname('T681') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T681 LIMIT 1;

theCharVar = 'Hello from P2327';
dsply theCharVar;
callp localProc();
P110();
P2267();
P1229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2327 in the procedure';
end-proc;