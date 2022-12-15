**free

ctl-opt dftactgrp(*no);

dcl-pi P4378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P3196.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds theTable extname('T1585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1585 LIMIT 1;

theCharVar = 'Hello from P4378';
dsply theCharVar;
callp localProc();
P37();
P3196();
P658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4378 in the procedure';
end-proc;