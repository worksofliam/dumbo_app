**free

ctl-opt dftactgrp(*no);

dcl-pi P1618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P1531.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P1618';
dsply theCharVar;
callp localProc();
P980();
P1531();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1618 in the procedure';
end-proc;