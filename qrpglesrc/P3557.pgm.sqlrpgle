**free

ctl-opt dftactgrp(*no);

dcl-pi P3557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2805.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P2123.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P3557';
dsply theCharVar;
callp localProc();
P2805();
P887();
P2123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3557 in the procedure';
end-proc;