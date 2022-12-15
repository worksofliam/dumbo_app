**free

ctl-opt dftactgrp(*no);

dcl-pi P5606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1938.rpgleinc'
/copy 'qrpgleref/P3572.rpgleinc'
/copy 'qrpgleref/P960.rpgleinc'

dcl-ds theTable extname('T568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T568 LIMIT 1;

theCharVar = 'Hello from P5606';
dsply theCharVar;
callp localProc();
P1938();
P3572();
P960();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5606 in the procedure';
end-proc;