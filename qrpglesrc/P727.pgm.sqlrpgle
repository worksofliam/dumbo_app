**free

ctl-opt dftactgrp(*no);

dcl-pi P727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P727';
dsply theCharVar;
callp localProc();
P211();
P591();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P727 in the procedure';
end-proc;