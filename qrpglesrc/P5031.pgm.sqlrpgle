**free

ctl-opt dftactgrp(*no);

dcl-pi P5031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4743.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P3658.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P5031';
dsply theCharVar;
callp localProc();
P4743();
P2893();
P3658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5031 in the procedure';
end-proc;