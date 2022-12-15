**free

ctl-opt dftactgrp(*no);

dcl-pi P1156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P1156';
dsply theCharVar;
callp localProc();
P85();
P55();
P542();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1156 in the procedure';
end-proc;