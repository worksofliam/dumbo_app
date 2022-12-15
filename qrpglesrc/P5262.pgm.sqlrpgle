**free

ctl-opt dftactgrp(*no);

dcl-pi P5262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4625.rpgleinc'
/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P3279.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P5262';
dsply theCharVar;
callp localProc();
P4625();
P1166();
P3279();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5262 in the procedure';
end-proc;