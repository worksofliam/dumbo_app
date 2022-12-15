**free

ctl-opt dftactgrp(*no);

dcl-pi P1200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T1321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1321 LIMIT 1;

theCharVar = 'Hello from P1200';
dsply theCharVar;
callp localProc();
P539();
P873();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1200 in the procedure';
end-proc;