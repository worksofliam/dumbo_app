**free

ctl-opt dftactgrp(*no);

dcl-pi P244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P244';
dsply theCharVar;
callp localProc();
P135();
P25();
P166();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P244 in the procedure';
end-proc;