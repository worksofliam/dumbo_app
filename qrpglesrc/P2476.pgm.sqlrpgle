**free

ctl-opt dftactgrp(*no);

dcl-pi P2476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1443.rpgleinc'
/copy 'qrpgleref/P1575.rpgleinc'
/copy 'qrpgleref/P1054.rpgleinc'

dcl-ds theTable extname('T667') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T667 LIMIT 1;

theCharVar = 'Hello from P2476';
dsply theCharVar;
callp localProc();
P1443();
P1575();
P1054();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2476 in the procedure';
end-proc;