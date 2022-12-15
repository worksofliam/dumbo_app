**free

ctl-opt dftactgrp(*no);

dcl-pi P3053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2040.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'

dcl-ds theTable extname('T505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T505 LIMIT 1;

theCharVar = 'Hello from P3053';
dsply theCharVar;
callp localProc();
P2040();
P2893();
P1925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3053 in the procedure';
end-proc;