**free

ctl-opt dftactgrp(*no);

dcl-pi P3194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P3134.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P3194';
dsply theCharVar;
callp localProc();
P517();
P1212();
P3134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3194 in the procedure';
end-proc;