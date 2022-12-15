**free

ctl-opt dftactgrp(*no);

dcl-pi P4540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3017.rpgleinc'
/copy 'qrpgleref/P1657.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'

dcl-ds theTable extname('T1176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1176 LIMIT 1;

theCharVar = 'Hello from P4540';
dsply theCharVar;
callp localProc();
P3017();
P1657();
P1103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4540 in the procedure';
end-proc;