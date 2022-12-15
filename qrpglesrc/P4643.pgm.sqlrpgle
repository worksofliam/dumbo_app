**free

ctl-opt dftactgrp(*no);

dcl-pi P4643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P3504.rpgleinc'

dcl-ds theTable extname('T1284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1284 LIMIT 1;

theCharVar = 'Hello from P4643';
dsply theCharVar;
callp localProc();
P889();
P647();
P3504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4643 in the procedure';
end-proc;