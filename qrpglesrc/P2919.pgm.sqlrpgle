**free

ctl-opt dftactgrp(*no);

dcl-pi P2919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2784.rpgleinc'
/copy 'qrpgleref/P2271.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P2919';
dsply theCharVar;
callp localProc();
P2784();
P2271();
P635();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2919 in the procedure';
end-proc;