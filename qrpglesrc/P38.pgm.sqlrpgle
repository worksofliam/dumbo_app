**free

ctl-opt dftactgrp(*no);

dcl-pi P38;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P38';
dsply theCharVar;
callp localProc();
P6();
P19();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P38 in the procedure';
end-proc;