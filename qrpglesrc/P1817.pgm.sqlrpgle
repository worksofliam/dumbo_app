**free

ctl-opt dftactgrp(*no);

dcl-pi P1817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P1817';
dsply theCharVar;
callp localProc();
P648();
P714();
P1300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1817 in the procedure';
end-proc;