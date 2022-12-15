**free

ctl-opt dftactgrp(*no);

dcl-pi P2868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1749.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P2868';
dsply theCharVar;
callp localProc();
P1749();
P1708();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2868 in the procedure';
end-proc;