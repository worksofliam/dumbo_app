**free

ctl-opt dftactgrp(*no);

dcl-pi P3311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2080.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P1271.rpgleinc'

dcl-ds theTable extname('T4') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T4 LIMIT 1;

theCharVar = 'Hello from P3311';
dsply theCharVar;
callp localProc();
P2080();
P469();
P1271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3311 in the procedure';
end-proc;