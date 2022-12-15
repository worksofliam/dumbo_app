**free

ctl-opt dftactgrp(*no);

dcl-pi P1259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P1165.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P1259';
dsply theCharVar;
callp localProc();
P392();
P1165();
P318();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1259 in the procedure';
end-proc;