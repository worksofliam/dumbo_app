**free

ctl-opt dftactgrp(*no);

dcl-pi P1911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'

dcl-ds theTable extname('T723') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T723 LIMIT 1;

theCharVar = 'Hello from P1911';
dsply theCharVar;
callp localProc();
P77();
P1246();
P1612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1911 in the procedure';
end-proc;