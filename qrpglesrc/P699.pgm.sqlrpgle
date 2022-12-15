**free

ctl-opt dftactgrp(*no);

dcl-pi P699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P699';
dsply theCharVar;
callp localProc();
P523();
P58();
P544();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P699 in the procedure';
end-proc;