**free

ctl-opt dftactgrp(*no);

dcl-pi P2006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1988.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P1987.rpgleinc'

dcl-ds theTable extname('T449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T449 LIMIT 1;

theCharVar = 'Hello from P2006';
dsply theCharVar;
callp localProc();
P1988();
P50();
P1987();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2006 in the procedure';
end-proc;