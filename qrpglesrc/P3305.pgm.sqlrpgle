**free

ctl-opt dftactgrp(*no);

dcl-pi P3305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P2267.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'

dcl-ds theTable extname('T877') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T877 LIMIT 1;

theCharVar = 'Hello from P3305';
dsply theCharVar;
callp localProc();
P431();
P2267();
P830();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3305 in the procedure';
end-proc;