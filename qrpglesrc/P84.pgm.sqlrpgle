**free

ctl-opt dftactgrp(*no);

dcl-pi P84;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T221 LIMIT 1;

theCharVar = 'Hello from P84';
dsply theCharVar;
callp localProc();
P27();
P0();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P84 in the procedure';
end-proc;