**free

ctl-opt dftactgrp(*no);

dcl-pi P1299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P1299';
dsply theCharVar;
callp localProc();
P29();
P353();
P148();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1299 in the procedure';
end-proc;