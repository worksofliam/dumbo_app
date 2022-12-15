**free

ctl-opt dftactgrp(*no);

dcl-pi P103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T294 LIMIT 1;

theCharVar = 'Hello from P103';
dsply theCharVar;
callp localProc();
P76();
P86();
P85();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P103 in the procedure';
end-proc;