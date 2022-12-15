**free

ctl-opt dftactgrp(*no);

dcl-pi P382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P382';
dsply theCharVar;
callp localProc();
P284();
P378();
P72();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P382 in the procedure';
end-proc;