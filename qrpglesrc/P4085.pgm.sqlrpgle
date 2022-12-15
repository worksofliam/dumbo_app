**free

ctl-opt dftactgrp(*no);

dcl-pi P4085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3743.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P3520.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P4085';
dsply theCharVar;
callp localProc();
P3743();
P224();
P3520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4085 in the procedure';
end-proc;