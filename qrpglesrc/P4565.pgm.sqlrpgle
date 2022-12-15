**free

ctl-opt dftactgrp(*no);

dcl-pi P4565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2905.rpgleinc'
/copy 'qrpgleref/P4304.rpgleinc'
/copy 'qrpgleref/P1995.rpgleinc'

dcl-ds theTable extname('T1301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1301 LIMIT 1;

theCharVar = 'Hello from P4565';
dsply theCharVar;
callp localProc();
P2905();
P4304();
P1995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4565 in the procedure';
end-proc;