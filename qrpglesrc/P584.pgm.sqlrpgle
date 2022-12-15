**free

ctl-opt dftactgrp(*no);

dcl-pi P584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T703 LIMIT 1;

theCharVar = 'Hello from P584';
dsply theCharVar;
callp localProc();
P0();
P279();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P584 in the procedure';
end-proc;