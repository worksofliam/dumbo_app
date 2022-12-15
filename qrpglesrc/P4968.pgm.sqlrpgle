**free

ctl-opt dftactgrp(*no);

dcl-pi P4968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P2819.rpgleinc'
/copy 'qrpgleref/P1361.rpgleinc'

dcl-ds theTable extname('T377') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T377 LIMIT 1;

theCharVar = 'Hello from P4968';
dsply theCharVar;
callp localProc();
P794();
P2819();
P1361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4968 in the procedure';
end-proc;