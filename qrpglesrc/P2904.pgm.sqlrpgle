**free

ctl-opt dftactgrp(*no);

dcl-pi P2904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P2087.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T1739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1739 LIMIT 1;

theCharVar = 'Hello from P2904';
dsply theCharVar;
callp localProc();
P1733();
P2087();
P486();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2904 in the procedure';
end-proc;