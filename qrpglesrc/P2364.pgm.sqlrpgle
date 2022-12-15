**free

ctl-opt dftactgrp(*no);

dcl-pi P2364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T537 LIMIT 1;

theCharVar = 'Hello from P2364';
dsply theCharVar;
callp localProc();
P1249();
P279();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2364 in the procedure';
end-proc;