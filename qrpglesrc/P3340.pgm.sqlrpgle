**free

ctl-opt dftactgrp(*no);

dcl-pi P3340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2017.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P2796.rpgleinc'

dcl-ds theTable extname('T1142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1142 LIMIT 1;

theCharVar = 'Hello from P3340';
dsply theCharVar;
callp localProc();
P2017();
P419();
P2796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3340 in the procedure';
end-proc;