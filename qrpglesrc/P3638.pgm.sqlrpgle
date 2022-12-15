**free

ctl-opt dftactgrp(*no);

dcl-pi P3638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P1977.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P3638';
dsply theCharVar;
callp localProc();
P556();
P363();
P1977();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3638 in the procedure';
end-proc;