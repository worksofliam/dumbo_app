**free

ctl-opt dftactgrp(*no);

dcl-pi P167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P167';
dsply theCharVar;
callp localProc();
P138();
P96();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P167 in the procedure';
end-proc;