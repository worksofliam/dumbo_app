**free

ctl-opt dftactgrp(*no);

dcl-pi P1212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T947') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T947 LIMIT 1;

theCharVar = 'Hello from P1212';
dsply theCharVar;
callp localProc();
P274();
P1161();
P128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1212 in the procedure';
end-proc;