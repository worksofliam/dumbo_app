**free

ctl-opt dftactgrp(*no);

dcl-pi P2759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'
/copy 'qrpgleref/P2349.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P2759';
dsply theCharVar;
callp localProc();
P1079();
P1062();
P2349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2759 in the procedure';
end-proc;