**free

ctl-opt dftactgrp(*no);

dcl-pi P777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T711') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T711 LIMIT 1;

theCharVar = 'Hello from P777';
dsply theCharVar;
callp localProc();
P575();
P14();
P275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P777 in the procedure';
end-proc;