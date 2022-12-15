**free

ctl-opt dftactgrp(*no);

dcl-pi P2812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2178.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds theTable extname('T1855') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1855 LIMIT 1;

theCharVar = 'Hello from P2812';
dsply theCharVar;
callp localProc();
P2178();
P1404();
P910();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2812 in the procedure';
end-proc;