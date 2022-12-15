**free

ctl-opt dftactgrp(*no);

dcl-pi P1993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'

dcl-ds theTable extname('T659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T659 LIMIT 1;

theCharVar = 'Hello from P1993';
dsply theCharVar;
callp localProc();
P992();
P90();
P915();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1993 in the procedure';
end-proc;