**free

ctl-opt dftactgrp(*no);

dcl-pi P3553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1449.rpgleinc'
/copy 'qrpgleref/P2480.rpgleinc'

dcl-ds theTable extname('T1191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1191 LIMIT 1;

theCharVar = 'Hello from P3553';
dsply theCharVar;
callp localProc();
P1449();
P2480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3553 in the procedure';
end-proc;