**free

ctl-opt dftactgrp(*no);

dcl-pi P2887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2174.rpgleinc'
/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'

dcl-ds theTable extname('T815') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T815 LIMIT 1;

theCharVar = 'Hello from P2887';
dsply theCharVar;
callp localProc();
P2174();
P1070();
P1466();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2887 in the procedure';
end-proc;