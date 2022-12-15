**free

ctl-opt dftactgrp(*no);

dcl-pi P1152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P1152';
dsply theCharVar;
callp localProc();
P502();
P595();
P829();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1152 in the procedure';
end-proc;