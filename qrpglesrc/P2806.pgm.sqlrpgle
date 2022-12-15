**free

ctl-opt dftactgrp(*no);

dcl-pi P2806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'

dcl-ds theTable extname('T985') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T985 LIMIT 1;

theCharVar = 'Hello from P2806';
dsply theCharVar;
callp localProc();
P2132();
P1423();
P1069();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2806 in the procedure';
end-proc;