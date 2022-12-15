**free

ctl-opt dftactgrp(*no);

dcl-pi P4257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'

dcl-ds theTable extname('T1785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1785 LIMIT 1;

theCharVar = 'Hello from P4257';
dsply theCharVar;
callp localProc();
P474();
P2054();
P1484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4257 in the procedure';
end-proc;