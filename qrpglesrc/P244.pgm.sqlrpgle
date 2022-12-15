**free

ctl-opt dftactgrp(*no);

dcl-pi P244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P244';
dsply theCharVar;
callp localProc();
P57();
P166();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P244 in the procedure';
end-proc;