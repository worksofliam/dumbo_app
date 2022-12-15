**free

ctl-opt dftactgrp(*no);

dcl-pi P157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T1774') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1774 LIMIT 1;

theCharVar = 'Hello from P157';
dsply theCharVar;
callp localProc();
P55();
P128();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P157 in the procedure';
end-proc;