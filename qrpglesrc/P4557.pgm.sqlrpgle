**free

ctl-opt dftactgrp(*no);

dcl-pi P4557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T1111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1111 LIMIT 1;

theCharVar = 'Hello from P4557';
dsply theCharVar;
callp localProc();
P2591();
P217();
P358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4557 in the procedure';
end-proc;