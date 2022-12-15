**free

ctl-opt dftactgrp(*no);

dcl-pi P1201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P1201';
dsply theCharVar;
callp localProc();
P29();
P613();
P1017();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1201 in the procedure';
end-proc;