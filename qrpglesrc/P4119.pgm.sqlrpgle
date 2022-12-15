**free

ctl-opt dftactgrp(*no);

dcl-pi P4119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P3970.rpgleinc'
/copy 'qrpgleref/P2707.rpgleinc'

dcl-ds theTable extname('T1195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1195 LIMIT 1;

theCharVar = 'Hello from P4119';
dsply theCharVar;
callp localProc();
P770();
P3970();
P2707();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4119 in the procedure';
end-proc;