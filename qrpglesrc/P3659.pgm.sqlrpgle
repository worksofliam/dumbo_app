**free

ctl-opt dftactgrp(*no);

dcl-pi P3659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1609.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P3312.rpgleinc'

dcl-ds theTable extname('T1818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1818 LIMIT 1;

theCharVar = 'Hello from P3659';
dsply theCharVar;
callp localProc();
P1609();
P805();
P3312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3659 in the procedure';
end-proc;