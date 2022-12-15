**free

ctl-opt dftactgrp(*no);

dcl-pi P5485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'
/copy 'qrpgleref/P2661.rpgleinc'

dcl-ds theTable extname('T1819') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1819 LIMIT 1;

theCharVar = 'Hello from P5485';
dsply theCharVar;
callp localProc();
P1614();
P1612();
P2661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5485 in the procedure';
end-proc;