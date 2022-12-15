**free

ctl-opt dftactgrp(*no);

dcl-pi P2028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1040.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P2028';
dsply theCharVar;
callp localProc();
P1040();
P377();
P1098();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2028 in the procedure';
end-proc;