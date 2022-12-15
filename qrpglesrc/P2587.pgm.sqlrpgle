**free

ctl-opt dftactgrp(*no);

dcl-pi P2587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T1575') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1575 LIMIT 1;

theCharVar = 'Hello from P2587';
dsply theCharVar;
callp localProc();
P588();
P316();
P205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2587 in the procedure';
end-proc;