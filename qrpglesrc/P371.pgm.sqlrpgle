**free

ctl-opt dftactgrp(*no);

dcl-pi P371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T44') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T44 LIMIT 1;

theCharVar = 'Hello from P371';
dsply theCharVar;
callp localProc();
P55();
P222();
P128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P371 in the procedure';
end-proc;