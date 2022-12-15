**free

ctl-opt dftactgrp(*no);

dcl-pi P2171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'

dcl-ds theTable extname('T731') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T731 LIMIT 1;

theCharVar = 'Hello from P2171';
dsply theCharVar;
callp localProc();
P417();
P2090();
P1473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2171 in the procedure';
end-proc;