**free

ctl-opt dftactgrp(*no);

dcl-pi P146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T1062') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1062 LIMIT 1;

theCharVar = 'Hello from P146';
dsply theCharVar;
callp localProc();
P3();
P46();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P146 in the procedure';
end-proc;