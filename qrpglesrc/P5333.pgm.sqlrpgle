**free

ctl-opt dftactgrp(*no);

dcl-pi P5333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P1639.rpgleinc'
/copy 'qrpgleref/P4740.rpgleinc'

dcl-ds theTable extname('T1621') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1621 LIMIT 1;

theCharVar = 'Hello from P5333';
dsply theCharVar;
callp localProc();
P323();
P1639();
P4740();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5333 in the procedure';
end-proc;