**free

ctl-opt dftactgrp(*no);

dcl-pi P1085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P1085';
dsply theCharVar;
callp localProc();
P770();
P704();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1085 in the procedure';
end-proc;