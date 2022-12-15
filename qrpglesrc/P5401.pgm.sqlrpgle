**free

ctl-opt dftactgrp(*no);

dcl-pi P5401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4275.rpgleinc'
/copy 'qrpgleref/P3548.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'

dcl-ds theTable extname('T686') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T686 LIMIT 1;

theCharVar = 'Hello from P5401';
dsply theCharVar;
callp localProc();
P4275();
P3548();
P922();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5401 in the procedure';
end-proc;