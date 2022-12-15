**free

ctl-opt dftactgrp(*no);

dcl-pi P3239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P2493.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'

dcl-ds theTable extname('T826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T826 LIMIT 1;

theCharVar = 'Hello from P3239';
dsply theCharVar;
callp localProc();
P1048();
P2493();
P1612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3239 in the procedure';
end-proc;