**free

ctl-opt dftactgrp(*no);

dcl-pi P3401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1663.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P3401';
dsply theCharVar;
callp localProc();
P720();
P1663();
P1231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3401 in the procedure';
end-proc;