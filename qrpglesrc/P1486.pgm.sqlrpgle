**free

ctl-opt dftactgrp(*no);

dcl-pi P1486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds T428 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T428 FROM T428 LIMIT 1;

theCharVar = 'Hello from P1486';
dsply theCharVar;
callp localProc();
P354();
P576();
P697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1486 in the procedure';
end-proc;