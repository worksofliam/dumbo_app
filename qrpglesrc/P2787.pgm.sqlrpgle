**free

ctl-opt dftactgrp(*no);

dcl-pi P2787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P2787';
dsply theCharVar;
callp localProc();
P1239();
P1128();
P787();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2787 in the procedure';
end-proc;