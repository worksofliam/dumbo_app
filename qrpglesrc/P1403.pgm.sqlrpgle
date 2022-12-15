**free

ctl-opt dftactgrp(*no);

dcl-pi P1403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P1403';
dsply theCharVar;
callp localProc();
P279();
P1144();
P671();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1403 in the procedure';
end-proc;