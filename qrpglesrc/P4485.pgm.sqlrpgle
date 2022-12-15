**free

ctl-opt dftactgrp(*no);

dcl-pi P4485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T360 LIMIT 1;

theCharVar = 'Hello from P4485';
dsply theCharVar;
callp localProc();
P398();
P1826();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4485 in the procedure';
end-proc;