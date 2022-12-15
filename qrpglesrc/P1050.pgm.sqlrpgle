**free

ctl-opt dftactgrp(*no);

dcl-pi P1050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P1050';
dsply theCharVar;
callp localProc();
P217();
P391();
P96();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1050 in the procedure';
end-proc;