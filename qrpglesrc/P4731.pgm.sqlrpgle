**free

ctl-opt dftactgrp(*no);

dcl-pi P4731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P3241.rpgleinc'
/copy 'qrpgleref/P2430.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P4731';
dsply theCharVar;
callp localProc();
P47();
P3241();
P2430();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4731 in the procedure';
end-proc;