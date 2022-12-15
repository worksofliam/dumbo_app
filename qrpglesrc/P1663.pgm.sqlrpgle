**free

ctl-opt dftactgrp(*no);

dcl-pi P1663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1290.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'

dcl-ds theTable extname('T436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T436 LIMIT 1;

theCharVar = 'Hello from P1663';
dsply theCharVar;
callp localProc();
P1290();
P549();
P654();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1663 in the procedure';
end-proc;