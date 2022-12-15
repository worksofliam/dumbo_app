**free

ctl-opt dftactgrp(*no);

dcl-pi P685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds theTable extname('T157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T157 LIMIT 1;

theCharVar = 'Hello from P685';
dsply theCharVar;
callp localProc();
P144();
P602();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P685 in the procedure';
end-proc;