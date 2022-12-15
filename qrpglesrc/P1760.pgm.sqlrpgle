**free

ctl-opt dftactgrp(*no);

dcl-pi P1760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P1267.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'

dcl-ds theTable extname('T1094') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1094 LIMIT 1;

theCharVar = 'Hello from P1760';
dsply theCharVar;
callp localProc();
P494();
P1267();
P1098();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1760 in the procedure';
end-proc;