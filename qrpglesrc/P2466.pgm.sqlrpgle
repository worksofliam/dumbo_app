**free

ctl-opt dftactgrp(*no);

dcl-pi P2466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1821.rpgleinc'
/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P2466';
dsply theCharVar;
callp localProc();
P1821();
P1215();
P712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2466 in the procedure';
end-proc;