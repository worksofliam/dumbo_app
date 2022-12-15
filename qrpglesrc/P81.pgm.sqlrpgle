**free

ctl-opt dftactgrp(*no);

dcl-pi P81;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P81';
dsply theCharVar;
callp localProc();
P78();
P4();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P81 in the procedure';
end-proc;