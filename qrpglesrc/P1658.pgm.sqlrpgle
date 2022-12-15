**free

ctl-opt dftactgrp(*no);

dcl-pi P1658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P1658';
dsply theCharVar;
callp localProc();
P913();
P785();
P378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1658 in the procedure';
end-proc;