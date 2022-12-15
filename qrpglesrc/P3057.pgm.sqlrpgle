**free

ctl-opt dftactgrp(*no);

dcl-pi P3057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2429.rpgleinc'
/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P3057';
dsply theCharVar;
callp localProc();
P2429();
P1910();
P1423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3057 in the procedure';
end-proc;