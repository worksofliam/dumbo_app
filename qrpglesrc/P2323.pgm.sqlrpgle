**free

ctl-opt dftactgrp(*no);

dcl-pi P2323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1676.rpgleinc'
/copy 'qrpgleref/P2089.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T739 LIMIT 1;

theCharVar = 'Hello from P2323';
dsply theCharVar;
callp localProc();
P1676();
P2089();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2323 in the procedure';
end-proc;